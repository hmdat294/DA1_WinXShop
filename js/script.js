
var btn_sp = document.getElementById("buttonsp");
var menu_sp = document.querySelector(".menusanpham");
var icon_bars1 = document.querySelector(".iconshow1");
var icon_xmark1 = document.querySelector(".iconhide1");

btn_sp.onclick = () => {
    if (menu_sp.style.display === "grid") {
        menu_sp.style.display = "none";
        icon_bars1.style.display = "block";
        icon_xmark1.style.display = "none";
    }
    else {
        menu_sp.style.display = "grid";
        icon_bars1.style.display = "none";
        icon_xmark1.style.display = "block";
    }
}





var btn_nav = document.getElementById("buttonnav");
var menu_nav = document.querySelector(".menu-navhide");
var icon_bars2 = document.querySelector(".iconshow2");
var icon_xmark2 = document.querySelector(".iconhide2");

btn_nav.onclick = () => {
    if (menu_nav.style.transform == "translateX(0px)") {
        menu_nav.style.transform = "translateX(-105%)";
        icon_bars2.style.display = "block";
        icon_xmark2.style.display = "none";
    }
    else {
        menu_nav.style.transform = "translateX(0px)";
        icon_bars2.style.display = "none";
        icon_xmark2.style.display = "block";
    }
}




var btn_dmhide = document.getElementById("buttonsphide");
var menu_dm = document.querySelector(".menusanpham-hide");
var icon_bars3 = document.querySelector(".iconshow3");
var icon_xmark3 = document.querySelector(".iconhide3");

btn_dmhide.onclick = () => {
    if (menu_dm.style.display == "block") {
        menu_dm.style.display = "none";
        icon_bars3.style.display = "block";
        icon_xmark3.style.display = "none";
    }
    else {
        menu_dm.style.display = "block";
        icon_bars3.style.display = "none";
        icon_xmark3.style.display = "block";
    }
}




