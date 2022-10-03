<!DOCTYPE html>
<html lang="PT-BR">
<head>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
	rel="stylesheet" />








<link rel="stylesheet" href="agendamento.css">

<meta charset="UTF-8">
<title>Editar Cadastro</title>
</head>
<body>
	
		<form name="bodycadastro" class="back" action="update">
			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col">
						<div id="cardR" class="card card-registration my-4">
							<div class="row g-0">
								<div class="col-xl-6 d-none d-xl-block">
									<img src="./imagens/ImgFormulario3.jpg" alt="Sample photo"
										class="img-fluid"
										style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
								</div>
								<div id="cadastro" class="col-xl-6">
									<div class="card-body p-md-5 text-black">
										<h3 class="mb-5 text-uppercase">Agende Sua Coleta
											Gratuita</h3>
										<div class="row">
											<div class="col-md-6 mb-4 sucess">
												<div class="form">
													<input name="cod" type="text" id="cod"
														class="form-control form-control-" readonly
														value="<%out.print(request.getAttribute("cod"));%>" /> <label
														class="form-label" for="form3Example1m">Codigo:</label>
												</div>
											</div>
											<div class="col-md-6 mb-4 sucess">
												<div class="form">
													<input name="nome" type="text" id="nome"
														class="form-control form-control-"
														value="<%out.print(request.getAttribute("nome"));%>" /> <label
														class="form-label" for="form3Example1m">Nome
														Completo</label>
												</div>
											</div>
											<div class="col-md-6 mb-4">
												<div class="form">
													<input name="fone" type="tel" id="phone"
														class="form-control form-control-md" maxlength="14"
														value="<%out.print(request.getAttribute("fone"));%>" /> <label
														id="tel" class="form-label" for="(form3Example1n)">
														<small>Telefone</small>
													</label>
												</div>
											</div>
										</div>

										<hr class="linha">

										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form">
													<input name="cidade" type="select" id="cidade"
														class="form-control form-control-md"
														value="<%out.print(request.getAttribute("cidade"));%>" />
													<label class="form-label" for="form3Example1m1">Cidade:
													</label>
												</div>
											</div>
											<div class="col-md-6 mb-4"></div>
										</div>
										<div class="row">
											<div class="col-md-6 mb-4">
												<div class="form">
													<input name="cep" type="" id="cep"
														class="form-control form-control-md" maxlength="10"
														value="<%out.print(request.getAttribute("cep"));%>" /> <label
														class="form-label" for="form3Example1m1">Cep:</label>
												</div>
											</div>

										</div>
										<div class="form mb-4">
											<input name="endereco" type="text" id="endere�o"
												class="form-control form-control-md"
												value="<%out.print(request.getAttribute("endereco"));%>" />
											<label class="form-label" for="form3Example8">Endere�o</label>
										</div>

										<hr class="linha">

										<div class="col-md-6 mb-4">
											<div class="form">
												<input name="data" type="date" id="data"
													class="form-control form-control-md"
													value="<%out.print(request.getAttribute("data"));%>" /> <label
													class="form-label" for="form3Example1m1">Agendar
													Data</label>
											</div>
										</div>
										<div class="form mb-4">
											<input rows="4" id="form3Example97"
												class="form-control form-control-lg" cols="66"
												name="comentarios" maxlength="300"
												value="<%out.print(request.getAttribute("comentarios"));%>">
											<label class="form-label" for="form3Example97">Comentarios</label>
										</div>
										<div class="d-flex justify-content-end pt-3">
											<button onClick="apagarTexto()" id="btn-limpar" type="button"
												value="Limpar" class="btn btn-light btn-lg">Limpar</button>
											<button id="btn-enviar" type="button" value="submit"
												class="btn btn-warning btn-lg ms-2" onClick="validar()">Enviar</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	
	<script src="scripts/validador.js"></script>
	<script src="scripts/agendamento.js"></script>
</body>
</html>