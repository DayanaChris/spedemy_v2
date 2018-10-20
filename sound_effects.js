var mouseclick = new Audio();
mouseclick.src = "../assets/sound_effects/mouseclick.mp3";

var hover = new Audio();
hover.src = "../assets/sound_effects/click.mp3";





function mouseDown() {
    document.getElementById("myP").style.color = "red";
}

function mouseUp() {
    document.getElementById("myP").style.color = "green";
}
