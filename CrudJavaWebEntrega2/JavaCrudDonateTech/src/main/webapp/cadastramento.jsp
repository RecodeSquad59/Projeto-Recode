<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.JavaBeans"%>
<%@page import="java.util.ArrayList"%>
<%
@SuppressWarnings ("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("cadastros");
%>

<!DOCTYPE html>
<html lang="PT-BR">
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="style.css" />
<title>Cadastro de Doador</title>
</head>
<body>
	<h1>Cadastro de Doador</h1>
	<button class="botao0">
		<a href="agendarDoação.html">Cadastro</a>
	</button>
	<table id="tabela">
		<thead>
			<tr>
				<th>Codigo</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Cidade</th>
				<th>Cep</th>
				<th>Endereço</th>
				<th>Data Retirada</th>
				<th>Comentario</th>
				<th>Editar</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
				<td><%=lista.get(i).getCodDoador()%></td>
				<td><%=lista.get(i).getNomeDoador()%></td>
				<td><%=lista.get(i).getTelDoador()%></td>
				<td><%=lista.get(i).getCidadeDoador()%></td>
				<td><%=lista.get(i).getCepDoador()%></td>
				<td><%=lista.get(i).getEnderecoDoador()%></td>
				<td><%=lista.get(i).getDataRetirada()%></td>
				<td><%=lista.get(i).getComentarios()%></td>
				<td>
					<a href="select?codDoador=<%=lista.get(i).getCodDoador()%>" class="botao1">Editar </a>
			    	<a href="javascript: confirmar(<%=lista.get(i).getCodDoador()%>)" class="botao2">Excluir</a></td>
				</tr>

			<%
			}
			%>
		</tbody>

	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>