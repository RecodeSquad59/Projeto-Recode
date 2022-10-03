/**
 * 
 */
 function confirmar(codDoador){
	let resposta = confirm("Confima a exclusao do cadastro ?")
	if (resposta === true){
		
		window.location.href = "delete?codDoador=" + codDoador
	}
}