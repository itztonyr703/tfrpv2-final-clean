---------------------------------
-- Do not change anything here --
---------------------------------
local cameras = {}

function createCamera(name, pos, rot, fov)
    fov = fov or 60.0
    rot = rot or vector3(0, 0, 0)
    local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, fov, false, 0)
    local try = 0
    while cam == -1 or cam == nil do
        Citizen.Wait(10)
        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, fov, false, 0)
        try = try + 1
        if try > 200 then
            return nil
        end
    end
    local self = {}
    self.cam = cam
    self.position = pos
    self.rotation = rot
    self.fov = fov
    self.rot = rot
    self.name = name
    self.lastPointTo = nil
    self.setCoords = function(pos)
        self.lastPointTo = pos
        SetCamCoord(self.cam, pos.x, pos.y, pos.z)
    end

    self.pointTo = function(pos)
        self.lastPointTo = pos
        PointCamAtCoord(self.cam, pos.x, pos.y, pos.z)
    end

    self.setRotation = function(rot)
        self.rot = rot
        SetCamRot(self.cam, rot.x, rot.y, rot.z, 2)
    end

    self.getRotation = function()
        return GetCamRot(self.cam, 2)
    end

    self.SetCamFov = function(fov)
        SetCamFov(self.cam, fov)
    end

    self.render = function()
        local tempCam = 0
        if not DoesCamExist(self.cam) then
            tempCam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", self.lastPointTo.x, self.lastPointTo.y, self.lastPointTo.z, self.rot.x, self.rot.y, self.rot.z, fov, false, 0)
            while tempCam == 0 and not DoesCamExist(tempCam) do
                Wait(33)
            end
            self.cam = tempCam
        end
        SetCamActive(self.cam, true)
        RenderScriptCams(true, true, 1, true, true)

        while not IsCamRendering(self.cam) do
            Wait(33)
        end
    end
    self.changeCam = function(newCam, duration)
        duration = duration or 3000
        SetCamActiveWithInterp(newCam, self.cam, duration, true, true)
    end
    self.destroy = function()
        SetCamActive(self.cam, false)
        DestroyCam(self.cam)
        cameras[name] = nil
    end

    self.getCam = function()
        return self.cam
    end

    self.changePosition = function(newPos, newPoint, newRot, duration)
        newRot = newRot or vector3(0, 0, 0)
        duration = duration or 4000
        if IsCamRendering(self.cam) then
            local tempCam = createCamera(string.format('tempCam-%s', self.name), newPos, newRot, self.fov)
            tempCam.render()
            if self.lastPointTo ~= nil then
                tempCam.pointTo(newPoint)
            end
            self.changeCam(tempCam.cam, duration)
            Citizen.Wait(duration)

            self.destroy()
            local newMain = deepCopy(tempCam)
            newMain.name = self.name
            self = newMain
            tempCam.destroy()
        else
            createCamera(self.name, newPos, newRot, self.fov)
        end
    end

    cameras[name] = self
    return self
end

function stopRendering()
    RenderScriptCams(false, false, 1, false, false)
end

--- @param object object
--- stolen: https://forums.coronalabs.com/topic/27482-copy-not-direct-reference-of-table/
function deepCopy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end

    return _copy(object)
end