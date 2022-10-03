// Menu dropdown Navbar:
function menuShow() {
    let menuMobile = document.querySelector('.listmenu');
    if (menuMobile.classList.contains('open')) {
        menuMobile.classList.remove('open');
    } else {
        menuMobile.classList.add('open');
    }
};
// "Shift" do botão menu:
let btn = document.querySelector(".menu-icon")
let icon = btn.querySelector(".fa-bars")

btn.onclick = function () {
    if (icon.classList.contains("fa-bars")) {
        icon.classList.replace("fa-bars", "fa-xmark");
    } else {
        icon.classList.replace("fa-xmark", "fa-bars");
    }
}
//NavBar transparente
const menu = document.querySelector('nav');

function activeScroll() {
    menu.classList.toggle('ativo', scrollY > 0);
}

window.addEventListener('scroll', activeScroll);