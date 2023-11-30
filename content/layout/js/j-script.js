


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






function showpass(a, b) {

    const input = document.getElementById(a);
    const show = document.getElementById('show' + b);
    const hide = document.getElementById('hide' + b);

    if (input.type === "password") {
        input.type = "text";
        show.style.opacity = "1";
        hide.style.opacity = "0";
    }
    else {
        input.type = "password";
        show.style.opacity = "0";
        hide.style.opacity = "1";
    }
}




function kiemtraform() {

    let tk = document.querySelector(".email-dn");
    let mk = document.querySelector(".pass-dn");

    var format_email = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    checkAccount(".email-dn", "Email", format_email);
    checkPass(".pass-dn", "Mật khẩu");

    if ((tk.value) && (mk.value)) return true;
    else return false;

}

function kiemtraformdk() {

    let taikhoan = document.querySelector(".taikhoan-dk");
    let sdt = document.querySelector(".sdt-dk");
    let email = document.querySelector(".email-dk");

    let pass = document.querySelector(".pass-dk");
    let repass = document.querySelector(".repass-dk");

    let ngaysinh = document.querySelector(".ngaysinh-dk");

    let nam = document.querySelector(".nam-dk");
    let nu = document.querySelector(".nu-dk");

    var format_tk = /^[a-z A-Z 0-9]+$/;
    var format_sdt = /((0)+([0-9]{9,11})\b)/;
    var format_email = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    checkAccount(".taikhoan-dk", "Tài khoản", format_tk);
    checkAccount(".sdt-dk", "Số điện thoại", format_sdt);
    checkAccount(".email-dk", "Email", format_email);
    checkPass(".pass-dk", "Mật khẩu");
    checkRePass(".pass-dk", ".repass-dk", "Mật khẩu");

    if ((taikhoan.value) &&
        (sdt.value) &&
        (email.value) &&
        (!isNaN(Date.parse(ngaysinh.value))) &&
        (nam.checked || nu.checked) &&
        (pass.value) &&
        (repass.value))
        return true;
    else return false;

}


function checkAccount(nameClass, text, format) {
    let Class = document.querySelector(nameClass);

    if (!Class.value) {
        Class.placeholder = "Bạn chưa nhập " + text + "!";
        return false;
    }
    else if (format.test(Class.value) == false) {
        Class.placeholder = text + " không hợp lệ!";
        Class.value = "";
        Class.style.color = "red";
        return false;
    }
    else {
        Class.placeholder = text;
        Class.style.color = "rgb(50, 220, 50)";
        return true;
    }
}


function checkPass(nameClass, text) {
    let Class = document.querySelector(nameClass);

    if (!Class.value) {
        Class.placeholder = "Bạn chưa nhập " + text + "!";
        return false;
    }
    else {
        Class.placeholder = text;
        Class.style.color = "rgb(50, 220, 50)";
        return true;
    }
}


function checkRePass(nameClass1, nameClass2, text) {
    let Class1 = document.querySelector(nameClass1);
    let Class2 = document.querySelector(nameClass2);

    if (Class1.value != Class2.value) {
        Class2.placeholder = "Mật khẩu không khớp!";
        Class2.value = "";
        Class2.style.color = "red";
        return false;
    }
    else {
        Class2.placeholder = "Nhập lại mật khẩu";
        Class2.style.color = "rgb(50, 220, 50)";
        return true;
    }
}

