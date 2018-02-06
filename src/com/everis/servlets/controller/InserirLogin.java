package com.everis.servlets.controller;
 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.dao.UsuariosDao;
import com.everis.model.Usuarios;

public class InserirLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InserirLogin() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		PrintWriter out = response.getWriter();
		
		String nome = request.getParameter("nome");
		String dep = request.getParameter("dep");
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		Integer nivel = Integer.parseInt(request.getParameter("nivel"));

		Usuarios usuarios = new Usuarios();
		UsuariosDao dao = new UsuariosDao();

		usuarios.setNome(nome);
		usuarios.setDepartamento(dep);
		usuarios.setUsuario(usuario);
		usuarios.setSenha(senha);
		usuarios.setNivel(nivel);
		
		

		String retorno = dao.Inserir(usuarios);

		if (retorno.equals("sucesso")) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> Inserção Realizada com Sucesso!! '" + nome + "' '" + usuario + "' '" + senha + "' '" + dep
					+ "' '" + nivel + "' </h1>");
			out.println("</body>");
			out.println("</html>");

		} else {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> ERRO: Não foi possível inserir UserName '" + usuario + "' já existe </h1>");
			out.println("</body>");
			out.println("</html>");
		}

	}
}
