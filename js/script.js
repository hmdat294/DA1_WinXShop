
var btn_sp = document.getElementById("buttonsp");
var menu_sp = document.querySelector(".menusanpham");
var icon_bars = document.querySelector(".fa-bars");
var icon_xmark = document.querySelector(".fa-xmark");

btn_sp.onclick = () => {
    if (menu_sp.style.display === "grid") {
        menu_sp.style.display = "none";
        icon_bars.style.display = "block";
        icon_xmark.style.display = "none";
    }
    else {
        menu_sp.style.display = "grid";
        icon_bars.style.display = "none";
        icon_xmark.style.display = "block";
    }
}










