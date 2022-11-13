var activeIndex = 0;
var hidedThings = 0;
var menu_index = 0;
var postURL = "";

var App = new Vue({
	el: '#container',
	data: 
	{
        identifier: null,
	    titleMenu: "rcore",
	    float: "left",
	    MileageFormat: "KM",
	    position: "middle",
	    visible_menu: false,
		menu: [],

        sellBackPercentage: 60,
        sellBackPrice: 4000,

		visible: false,
		showStats: false,
		DisplayVehicle: false,
		IsSpawningAfterBuy: true,
		CostForTryOut: 5000,
        EnableTryOutVehicle: false,
		show: true,
		loading: false,
		ChangingPrice: false,
		buyCount: 1,
		activeIndex: [],
		index: 0,
		PercentToBuyVehicle: 100, //dont change this value, wont do anything.

		cars: [],
	},

	methods: {

	    // User want to try out vehicle
	    tryVehicle: function(pay){
	        HideAllModals();
	        if(pay){
	            $.post('https://rcore_pdm/paymoney', JSON.stringify({
                    money: "free",
                    type: "tryOut",
                }));
	        }else{
	            $("#tryOutVehicle").modal("show");
	        }
	    },

        sellTheVehicle: function(){
            HideAllModals();
            $("#chooseToGetRefund").modal({
                backdrop: 'static',
                keyboard: false
            });
        },

        requestRefund: function(type){
            this.Close();
            $.post('https://rcore_pdm/refund', JSON.stringify({
                typeSelected: type,
            }));
        },

        // Selected payment user want
        selectPayment: function(type){
            $("#paymentType").modal("hide");
            $.post('https://rcore_pdm/declined', JSON.stringify({}));
            $.post('https://rcore_pdm/paymoney', JSON.stringify({
                money: type,
                type: postURL,
                typeSelected: type,
            }));
        },

        // When player close any modal
	    Close: function(){
            $.post('https://rcore_pdm/declined', JSON.stringify({}));
            HideAllModals();
	    },

	    // change price logic for vehicle
	    ChangePrice: function(){
            var value = $("#new_price").val();
            if(isNumeric(value)){
                value = parseInt(value);
                if(value <= 0){
                    sendAlert(CantBeNegative, "danger")
                }else{
                    sendAlert(SuccesfullyChangedPrice)
                    $.post('https://rcore_pdm/updatePrice', JSON.stringify({
                        money: value,
                    }));
                }
            }else{
                sendAlert(NotValidAmount, "danger")
            }
	    },

		// will buy the vehicle.
		payForVehicle: function(){
		    if(App.DisplayVehicle == true){
                $.post('https://rcore_pdm/paymoney', JSON.stringify({
                    money: "...",
                    type: "buyAndHide",
                }));
                HideAllModals();
                App.visible = false;
		        return true;
		    }
		    if(App.IsSpawningAfterBuy == true){
                postURL = "buyVehicle";
                if(App.cars[activeIndex].realPrice == false && App.cars[activeIndex].vip_price == false){
                    $.post('https://rcore_pdm/paymoney', JSON.stringify({
                        money: "cash",
                        type: postURL,
                    }));
                    HideAllModals();
                }else{
                    $('#paymentType').modal({
                        backdrop: 'static',
                        keyboard: false
                    });
                    $("#buyVehicle").modal("hide");
                    $("#toStock").modal("hide");
                }
		    }else{
		        postURL = "buyVehicle";
                $.post('https://rcore_pdm/paymoney', JSON.stringify({
                    money: "society",
                    type: postURL,
                    count: this.buyCount,
                }));
                $("#toStock").modal("hide");
                $("#buyVehicle").modal("hide");
		    }
		    this.buyCount = 1;
		},

		userDoNotWantPay: function(){
            $.post('https://rcore_pdm/declined', JSON.stringify({}));
            HideAllModals();
		},
	}
})

function isNumeric(str){
    if (typeof str != "string") return false
    return !isNaN(str) && !isNaN(parseFloat(str))
}

function calculatePosition(){
	var newResolution = (3840 / window.innerWidth) * 100;
	var numberToMoveRight = 5.66 / 100 * newResolution;
	numberToMoveRight *= activeIndex;
	$("#cars").css("right", numberToMoveRight + "%")

	for(var i = 0; i < App.cars.length; i++){
	    App.cars[i].isActive = false;
	}
	if(App.cars[activeIndex] != null){
		App.cars[activeIndex].isActive = true
		App.activeIndex = App.cars[activeIndex].displayData;

		App.activeIndex.hasPrice = App.cars[activeIndex].hasPrice;
		App.activeIndex.priceVehicle = App.cars[activeIndex].priceVehicle;
		App.activeIndex.realPrice = App.cars[activeIndex].realPrice;
	}
	App.index = activeIndex;

	App.show = false;
	setTimeout(function(){ App.show = true; }, 300);
}

function sendAlert(msg, style = 'success') {
    $.notify( { message: msg,}, {
        type: style,
        showProgressbar: false,
        newest_on_top: true,
        animate:
        {
            enter: "animated bounceInRight",
            exit: "animated bounceOutRight",
        }
    });
}

function BrowseBetweenVehicles(position){
    if(position){
        activeIndex ++;
        if(activeIndex > App.cars.length -1) activeIndex = 0
        calculatePosition();
    }else{
        activeIndex --;
        if(activeIndex < 0) activeIndex = App.cars.length -1
        calculatePosition();
    }
}

function LoadDefaultImageForVehicle(data, activeIndex_, img){
    var finalImage = img ?? ("https://relisoft.cz/www/assets/vehicles/" + (data.model ?? data.image) + ".jpg");

    fetch(finalImage, { method: 'HEAD' }).then(res => {
        App.visible = false;
        if (!res.ok) {
            App.cars[activeIndex_].image = MissingImage;
            }else{
            App.cars[activeIndex_].image = finalImage;
        }
        App.visible = true;
    }).catch(err => console.log('Error:', err));
}

function HideAllModals(){
    $("#textboard").modal("hide");
    $("#toStock").modal("hide");
    $("#buyVehicle").modal("hide");
    $("#paymentType").modal("hide");
    $("#customPrice").modal("hide");
    $("#DisplayThisVehicle").modal("hide");
    $("#tryOutVehicle").modal("hide");
    $("#selling_car_info").modal("hide");
    $("#chooseToGetRefund").modal("hide");
}

function numberWithCommas(x) {
    x = Math.trunc(x)
    var parts = String(x).split(".");
    parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    return parts.join(".");
}

$(document).ready(function(){
    window.addEventListener('message', function(event) {
        var data = event.data;

        if(data.type === "display_for_copy"){
			$('#textboard').modal("show");
			$(".textarea").val(data.text);
        }

        if(data.type === "removeIndex"){
            App.visible = false;
            App.cars[activeIndex].Hide = true;
            App.visible = true;
            hidedThings ++;
        }

        if(data.type === "ShowSellPrice"){
            App.sellBackPercentage = data.percentage;
            App.sellBackPrice = data.money;
            $("#selling_car_info").modal({
                backdrop: 'static',
                keyboard: false
            });
        }

        if(data.type === "EnableTryOutVehicle"){
            App.EnableTryOutVehicle = data.EnableTryOutVehicle;
            App.CostForTryOut = data.CostForTryOut;
        }

        if(data.type === "DisplayVehicle"){
            App.DisplayVehicle = data.DisplayVehicle;
        }

        if(data.type === "updateprecent"){
            App.PercentToBuyVehicle = data.PercentToBuyVehicle;
        }

        if(data.type === "MileageFormat"){
            App.MileageFormat = data.mileageFormat
        }

        if(data.type === "showVehiclePrice"){
            if(App.DisplayVehicle == true){
                 $('#DisplayThisVehicle').modal({
                    backdrop: 'static',
                    keyboard: false
                });
                return true;
            }
		    if(App.ChangingPrice == true){
		        HideAllModals();
                $('#customPrice').modal({
                    backdrop: 'static',
                    keyboard: false
                });
		        return true;
		    }

            if(data.buyingStocks){
                $('#toStock').modal({
                    backdrop: 'static',
                    keyboard: false
                });
                }else{
                $('#buyVehicle').modal({
                    backdrop: 'static',
                    keyboard: false
                });
            }
        }

        if(data.type === "updateLimit"){
            App.cars[activeIndex].limit = data.limit
            if(App.cars[activeIndex].limit >= 1) {
                App.cars[activeIndex].Hide = false;
            }else{
                App.cars[activeIndex].Hide = true;
            }
        }

        if(data.type === "ChangingPrice"){
            App.ChangingPrice = data.ChangingPrice
        }

		if(data.type === "error_message"){
		    sendAlert(data.message, data.alert);
		}

		if(data.type === "add"){
		    hidedThings = 0;
            activeIndex = 0;
            if(data.displayData.data_2       < 0) data.displayData.data_2       = 0;
            if(data.displayData.suspension   < 0) data.displayData.suspension   = 0;
            if(data.displayData.data_1       < 0) data.displayData.data_1       = 0;
            if(data.displayData.data_3       < 0) data.displayData.data_3       = 0;

            if(App.IsSpawningAfterBuy == false && App.ChangingPrice == false){
                price = (data.priceVehicle <= 1 ? "Free" : "$" + numberWithCommas(data.priceVehicle * (App.PercentToBuyVehicle / 100)))
            }

            if(data.HasLicensePrice == true && data.limit == 0){
                price = (data.priceVehicle <= 1 ? "Free" : "$" + numberWithCommas(data.priceVehicle))
            }

			App.cars[data.ID - 1] = {
				image: "",

                displayData: data.displayData,

                hasPrice: data.hasPrice,
                priceVehicle: price,
                vip_price: data.vip_price,
                realPrice: data.priceVehicle,

                HasSubVehicles: data.HasSubVehicles,
                MaxSubVehicles: data.MaxSubVehicles,
                CurrentSubVehicle: data.CurrentSubVehicle,

                limit: data.limit,

				isActive: false,
				Hide: data.hide,
				stored: data.stored,
				HasLicensePrice: data.HasLicensePrice,

				isCategory: data.isCategory,
				category: data.category,
			};

            if(data.isCategory == false){
                if (CustomImages[data.image] != null){
                    LoadDefaultImageForVehicle(data, data.ID - 1, CustomImages[data.image])
                }else{
                    LoadDefaultImageForVehicle(data, data.ID - 1)
                }
            }else{
                if (CategoriesImages[data.category] != null){
                     LoadDefaultImageForVehicle(data, data.ID - 1, CategoriesImages[data.category])
                }else{
                    LoadDefaultImageForVehicle(data, data.ID - 1)
                }
            }
            this.buyCount = 1;
		}

		if(data.type === "loding"){
		    App.loading = data.loding;
		}

		if(data.type === "open"){
			App.visible = true;
			calculatePosition()
		}

		if(data.type === "stats"){
            App.showStats = data.visible;
		}

        if(data.type === "spawnAfter"){
            App.IsSpawningAfterBuy = data.IsSpawningAfterBuy;
        }

		if(data.type === "reset"){
			App.cars = [];
		}

		if(data.type === "hide"){
			App.visible = false;
			App.cars = [];
            HideAllModals();
            App.showStats = false;
		}

		if(data.type === "update_index"){
            var activeIndex_ = activeIndex;

            App.cars[activeIndex_].displayData = data.displayData;

            var price = (data.priceVehicle <= 1 ? "Free" : "$" + numberWithCommas(data.priceVehicle))

            if(App.IsSpawningAfterBuy == false && App.ChangingPrice == false){
                price = (data.priceVehicle <= 1 ? "Free" : "$" + numberWithCommas(data.priceVehicle * (App.PercentToBuyVehicle / 100)))
            }

            if(data.HasLicensePrice == true && data.limit == 0){
                price = (data.priceVehicle <= 1 ? "Free" : "$" + numberWithCommas(data.priceVehicle))
            }

            App.cars[activeIndex_].displayData.speed = data.speed;

            App.cars[activeIndex_].displayData.name = data.name;

            App.cars[activeIndex_].displayData.name = data.name;
            App.cars[activeIndex_].displayData.vehicle_type = data.vehicle_type;
            App.cars[activeIndex_].image = "https://relisoft.cz/www/assets/vehicles/" + data.model + ".jpg";

            App.cars[activeIndex_].displayData.vip_price = data.vip_price;

            if(data.isCategory == false){
                if (CustomImages[data.model] != null){
                    LoadDefaultImageForVehicle(data, activeIndex_, CustomImages[data.model]);
                }else{
                    LoadDefaultImageForVehicle(data, activeIndex_);
                }
            }else{
                if (CategoriesImages[data.category] != null){
                    LoadDefaultImageForVehicle(data, activeIndex_, CategoriesImages[data.category]);
                }else{
                    LoadDefaultImageForVehicle(data, activeIndex_)
                }
            }

            App.cars[activeIndex_].hasPrice = data.hasPrice;

            App.cars[activeIndex_].priceVehicle = price;

            App.cars[activeIndex_].limit = data.limit;

            App.cars[activeIndex_].MaxSubVehicles = data.MaxSubVehicles;
            App.cars[activeIndex_].CurrentSubVehicle = data.CurrentSubVehicle;
            App.visible = true;

            calculatePosition();

            App.cars[activeIndex_].displayData.plate = data.plate;
		}

        if(data.type === "right"){
            BrowseBetweenVehicles(true);
        }
        if(data.type === "left"){
            BrowseBetweenVehicles(false);
        }
    });
});

function setActiveMenuIndex(menu_index, active_){
    for(var i = 0; i < App.menu.length; i++){ App.menu[i].active = false }
    if(App.menu[menu_index] != null) App.menu[menu_index].active = active_
}

$(function(){
    function display(bool) {
        App.visible_menu = bool;
    }
    display(false);
	window.addEventListener('message', function(event) {
        var item = event.data;

        if(item.type_menu === "reset"){
            App.menu = [];
        }

        if(item.type_menu === "add"){
            App.menu.push({
                label: item.label,
                number: item.index,
                active: false,
            });
        }

        if(item.type_menu === "title"){
            App.titleMenu = item.title
        }

        if (item.type_menu === "ui"){
            display(item.status);
            if(item.properties){
                App.float = item.properties.float;
                App.position = item.properties.position;
            }
            App.identifier = item.identifier;
            menu_index = 0;
            setActiveMenuIndex(0, true)
        }

	    if(App.visible_menu){
            if (item.type_menu === "enter"){
                $.post('https://rcore_pdm/clickItem', JSON.stringify({
                    index: App.menu[menu_index].number,
                    identifier: App.identifier,
                }));
            }

            if (item.type_menu === "up"){
                var lastIndex = menu_index;
                menu_index --;
                if(menu_index < 0) menu_index = App.menu.length -1
                setActiveMenuIndex(menu_index, true)

                 $.post('https://rcore_pdm/selectNew', JSON.stringify({
                     index: App.menu[menu_index].number,
                     identifier: App.identifier,
                     newIndex: App.menu[menu_index].number,
                     oldIndex: App.menu[lastIndex].number,
                 }));
            }

            if (item.type_menu === "down"){
                var lastIndex = menu_index;
                menu_index ++;
                if(menu_index > App.menu.length -1) menu_index = 0
                setActiveMenuIndex(menu_index, true)

                 $.post('https://rcore_pdm/selectNew', JSON.stringify({
                     index: App.menu[menu_index].number,
                     identifier: App.identifier,
                     newIndex: App.menu[menu_index].number,
                     oldIndex: App.menu[lastIndex].number,
                 }));
            }
		}
	})
});