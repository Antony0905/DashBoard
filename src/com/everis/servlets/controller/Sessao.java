package com.everis.servlets.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.dao.DaoGeneric;
import com.everis.model.Usuarios;

public class Sessao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Sessao() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		PrintWriter out = response.getWriter();
		DaoGeneric<Usuarios> daoGeneric = new DaoGeneric<Usuarios>();
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");

		List<Usuarios> listaUsuarios = new ArrayList<Usuarios>();
		listaUsuarios = daoGeneric.buscarUsuarios(Usuarios.class);

		for (Usuarios lista : listaUsuarios) {
			if (lista.getUsuario().toUpperCase().equals(usuario.toUpperCase()) && lista.getSenha().equals(senha)) {
				HttpSession sessao = request.getSession();
				sessao.setAttribute("user", usuario);
				response.sendRedirect("index.jsp");
			} else {
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

		}

	}

}