function goUp() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

window.onscroll = function() {
    showButton();
}

function showButton() {
    var buttonUp = document.getElementById ("go-up");
     if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        buttonUp.style.display = "block";
     } else {
        buttonUp.style.display = "none";
     }
}