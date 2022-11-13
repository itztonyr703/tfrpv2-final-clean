local Translations = {
    ["error"] = "Something went wrong!",
    ["switchedjob"] = "Switched job!",
    ["jobdelete"] = "Job deleted!",
    ["nothingsaved"] = "No jobs are currently saved!",
    ["cooldown"] = "Cooldown active!", -- change the number with your cooldown timer
    ["zone"] = "Not in working zone!",
    ["maxJob"] = "Max amount of jobs reached",
    ["jobSave"] = "Successfully saved to Multi Job menu",
    ["jobSwitchTo"] = "Switched to",
    ["jobSwitchTo"] = "Saved & switched job to",
    ["job"] = "job",
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
