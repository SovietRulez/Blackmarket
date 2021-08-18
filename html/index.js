$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('https://SovietBlackmarket/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('https://SovietBlackmarket/exit', JSON.stringify({}));
        return
    })
    $("#giveWeapon").click(function (){
        $.post('https://SovietBlackmarket/giveWeapon', JSON.stringify({}));
        return
    })
    $("#giveSmg").click(function (){
        $.post('https://SovietBlackmarket/giveSmg', JSON.stringify({}));
        return
    })
    $("#giveCarbine").click(function (){
        $.post('https://SovietBlackmarket/giveCarbine', JSON.stringify({}));
        return
    })
    $("#givePistol50").click(function (){
        $.post('https://SovietBlackmarket/givePistol50', JSON.stringify({}));
        return
    })
    $("#givePistolAmmo").click(function (){
        $.post('https://SovietBlackmarket/givePistolAmmo', JSON.stringify({}));
        return
    })
    $("#submit").click(function () {
        let inputValue = $("#input").val()
        if (inputValue.length >= 100) {
            $.post("https://SovietBlackmarket/error", JSON.stringify({
                error: "Input was greater than 100"
            }))
            return
        } else if (!inputValue) {
            $.post("https://SovietBlackmarket/error", JSON.stringify({
                error: "There was no value in the input field"
            }))
            return
        } 
    
        $.post('https://SovietBlackmarket/main', JSON.stringify({
            text: inputValue,
        }));
        return;
    })
})
