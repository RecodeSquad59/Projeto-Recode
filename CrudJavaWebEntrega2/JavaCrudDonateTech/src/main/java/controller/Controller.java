package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.JavaBeans;

@WebServlet(urlPatterns = { "/Controller", "/main", "/insert", "/select", "/update","/delete" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();
	JavaBeans cadastro = new JavaBeans();

	public Controller() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		System.out.println(action);
		if (action.equals("/main")) {
			cadastros(request, response);
		} else if (action.equals("/insert")) {
			novoCadastro(request, response);
		} else if (action.equals("/select")) {
			listarCadastro(request, response);
		} else if (action.equals("/update")) {
			editarCadastro(request, response);
		}else if (action.equals("/delete")) {
			deletarCadastro(request, response);
		} else {
			response.sendRedirect("Index.html");
		}
	}

	// NOVO CADASTRO
	protected void novoCadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		cadastro.setNomeDoador(request.getParameter("nome"));
		cadastro.setTelDoador(request.getParameter("fone"));
		cadastro.setCidadeDoador(request.getParameter("cidade"));
		cadastro.setCepDoador(request.getParameter("cep"));
		cadastro.setEnderecoDoador(request.getParameter("endereco"));
		cadastro.setDataRetirada(request.getParameter("data"));
		cadastro.setComentarios(request.getParameter("comentarios"));

		dao.inserirCadastro(cadastro);
		response.sendRedirect("main");

	}

	// LISTAR CADASTROS
	protected void cadastros(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<JavaBeans> lista = dao.listarCadastros();
		// response.sendRedirect("cadastramento.jsp");
		request.setAttribute("cadastros", lista);
		RequestDispatcher rd = request.getRequestDispatcher("cadastramento.jsp");
		rd.forward(request, response);

	}
	// EDITAR CADASTROS

	protected void listarCadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int codDoador = Integer.parseInt(request.getParameter("codDoador"));

		cadastro.setCodDoador(codDoador);

		dao.selecionarCadastro(cadastro);

		request.setAttribute("cod", cadastro.getCodDoador());
		request.setAttribute("nome", cadastro.getNomeDoador());
		request.setAttribute("fone", cadastro.getTelDoador());
		request.setAttribute("cidade", cadastro.getCidadeDoador());
		request.setAttribute("cep", cadastro.getCepDoador());
		request.setAttribute("endereco", cadastro.getEnderecoDoador());
		request.setAttribute("data", cadastro.getDataRetirada());
		request.setAttribute("comentarios", cadastro.getComentarios());

		RequestDispatcher rd = request.getRequestDispatcher("Editar.jsp");
		rd.forward(request, response);
	}

	protected void editarCadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		cadastro.setNomeDoador(request.getParameter("nome"));
		cadastro.setTelDoador(request.getParameter("fone"));
		cadastro.setCidadeDoador(request.getParameter("cidade"));
		cadastro.setCepDoador(request.getParameter("cep"));
		cadastro.setEnderecoDoador(request.getParameter("endereco"));
		cadastro.setDataRetirada(request.getParameter("data"));
		cadastro.setComentarios(request.getParameter("comentarios"));

		dao.alterarCadastro(cadastro);

		response.sendRedirect("main");

	}
	// DELETAR CONTATO
	protected void deletarCadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int codDoador = Integer.parseInt(request.getParameter("codDoador"));
		cadastro.setCodDoador(codDoador);

		dao.deletarCadastro(cadastro);

		response.sendRedirect("main");
	}
}