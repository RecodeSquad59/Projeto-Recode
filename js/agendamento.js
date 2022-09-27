//tamanho dos campos do formulario:
var cep = document.getElementById('cep')
var phone = document.getElementById('phone')

phone.addEventListener('keypress',() => {
    let phonelength = phone.value.length

    
    if (phonelength === 2) {
        phone.value += ')';
        phone.value = '(' + phone.value;
    }else if (phonelength === 9) {
        phone.value += '-'
    }
}) 
cep.addEventListener('keypress',() => {
    let ceplength = cep.value.length

    if (ceplength === 2) {
        cep.value += '.'
    }else if (ceplength === 6) {
        cep.value += '-'
    }

    numericOnly = true
})
//limpar conteudo formulario:
function apagarTexto (){
    document.getElementById('nome').value='';
    document.getElementById('phone').value='';
    document.getElementById('cep').value='';
    document.getElementById('cidade').value='';
    document.getElementById('endereço').value='';
    document.getElementById('data').value='';
    document.getElementById('comentarios').value='';
    

};
// Menu dropdown Navbar:
function menuShow() {
    let menuMobile = document.querySelector('.listmenu');
    if(menuMobile.classList.contains('open')) {
        menuMobile.classList.remove('open');
    }else {
        menuMobile.classList.add('open');
    }
 };

 let btn = document.querySelector(".menu-icon")
 let icon = btn.querySelector(".fa-bars")

    btn.onclick = function (){
        if(icon.classList.contains("fa-bars")){
            icon.classList.replace("fa-bars","fa-xmark");
        }else{
            icon.classList.replace("fa-xmark","fa-bars");
        }
    }
 //NavBar transparente
 const menu = document.querySelector('nav');

 function activeScroll(){
    menu.classList.toggle('ativo', scrollY > 0);
 }

 window.addEventListener('scroll', activeScroll);

