package com.everis.servlets.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.constants.Constants;
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
		
		boolean retorno = false;
		HttpSession session = request.getSession();
		setUsuarioJaCadastrado(false);
		Usuarios usuarios = new Usuarios();

		String usuario = request.getParameter("usuario");
		usuarios.setNome(request.getParameter("nome"));
		usuarios.setDepartamento(request.getParameter("dep"));
		usuarios.setUsuario(usuario);
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
			session.setAttribute("usuarioSucesso", retorno);
			response.sendRedirect(Constants.CAMINHO_PAGINA_INDEX);
		} else {
			session.setAttribute("usuarioJaCadastrado", true);
			session.setAttribute("nomeJaCadastrado", usuario);
			response.sendRedirect(Constants.CAMINHO_PAGINA_CADASTRO_USUARIO);
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
