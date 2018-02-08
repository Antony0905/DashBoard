package com.everis.servlets.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.dao.DaoGeneric;
import com.everis.model.Usuarios;

public class InserirLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoGeneric<Usuarios> daoGeneric = new DaoGeneric<Usuarios>();
	private boolean usuarioJaCadastrado;

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
		boolean retorno = false;
		setUsuarioJaCadastrado(false);
		Usuarios usuarios = new Usuarios();

		usuarios.setNome(request.getParameter("nome"));
		usuarios.setDepartamento(request.getParameter("dep"));
		usuarios.setUsuario(request.getParameter("usuario"));
		usuarios.setSenha(request.getParameter("senha"));
		usuarios.setNivel(Integer.parseInt(request.getParameter("nivel")));

		List<Usuarios> listaUsuarios = new ArrayList<Usuarios>();
		listaUsuarios = daoGeneric.buscarUsuarios(Usuarios.class);

		for (Usuarios lista : listaUsuarios) {
			if (lista.getUsuario().toUpperCase().equals(usuarios.getUsuario().toUpperCase())) {
				setUsuarioJaCadastrado(true);
			}
		}

		if (isUsuarioJaCadastrado() == false) {
			retorno = daoGeneric.salvar(usuarios);
		}

		if (retorno) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> Inserção Realizada com Sucesso!! '" + usuarios.getNome() + "' '" + usuarios.getUsuario() + "' '" + usuarios.getSenha() + "' '" + usuarios.getDepartamento()
					+ "' '" + usuarios.getNivel() + "' </h1>");
			out.println("</body>");
			out.println("</html>");

		} else {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> ERRO: Não foi possível inserir UserName '" + usuarios.getUsuario() + "' já existe </h1>");
			out.println("</body>");
			out.println("</html>");
		}

	}

	public DaoGeneric<Usuarios> getDaoGeneric() {
		return daoGeneric;
	}

	public void setDaoGeneric(DaoGeneric<Usuarios> daoGeneric) {
		this.daoGeneric = daoGeneric;
	}

	public boolean isUsuarioJaCadastrado() {
		return usuarioJaCadastrado;
	}

	public void setUsuarioJaCadastrado(boolean usuarioJaCadastrado) {
		this.usuarioJaCadastrado = usuarioJaCadastrado;
	}
}
