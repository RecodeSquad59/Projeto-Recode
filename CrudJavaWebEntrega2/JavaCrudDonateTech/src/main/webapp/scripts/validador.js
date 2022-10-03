/**
 * 
 */
 
 function validar(){
	let nome = bodycadastro.nome.value
	let fone = bodycadastro.fone.value
	if(nome === ""){
		alert('preencher seu Nome')
		bodycadastro.nome.focus()
		return false
	}else if (fone === ""){
		alert('preencher seu Telefone')
		bodycadastro.fone.focus()
		return false
	}else {
		document.forms["bodycadastro"].submit()
	}
}
 	