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

function apagarTexto (){
    document.getElementById('nome').value='';
    document.getElementById('phone').value='';
    document.getElementById('cep').value='';
    document.getElementById('cidade').value='';
    document.getElementById('endereço').value='';
    document.getElementById('data').value='';
    document.getElementById('comentarios').value='';
    

};

const email = document.getElementById('email')

form.addEventListener('submit', (e) => {
    e.preventDefault()

    checkInputs()
})

function checkInputs() {

    const emailValue = email.value.trim()

    if (emailValue === '') {

        errorValidation(email, 'Email Invalido!')

    } else {

    }
}