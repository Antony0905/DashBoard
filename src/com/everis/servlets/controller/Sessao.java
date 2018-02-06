package com.everis.servlets.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.dao.UsuariosDao;
import com.everis.model.Usuarios;

public class Sessao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sessao() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		doGet(request, response);
		PrintWriter out = response.getWriter();
		Usuarios usuarios = new Usuarios();
		UsuariosDao dao = new UsuariosDao();
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
		
		usuarios.setUsuario(usuario);
		usuarios.setSenha(senha);
		
		try {
			if(dao.verificaUsuario(usuarios)) {
				HttpSession sessao = request.getSession();
				sessao.setAttribute("user", usuario);
				response.sendRedirect("index.jsp");
			}else{
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head>");
				out.println("<title> Sessão de Login </title>");
				out.println("</head>");
				out.println("<body>");
				out.println("<script> alert('Usuário ou Senha invalidos'); </script>");
				out.println("<script> window.location.href = 'mmenu/html/pages/login.jsp'; </script>");
				out.println("</body>");	
				out.println("</html>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	
}
