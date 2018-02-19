package com.everis.servlets.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.constants.Constants;

public class ViewProjetos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewProjetos() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String usuario = request.getParameter("usuarioSelecionado");
		HttpSession sessao = request.getSession();
		sessao.setAttribute("usuarioSelecionado", usuario);
		System.out.println(usuario);
		response.sendRedirect(Constants.CAMINHO_PAGINA_VISUALIZAR_DEMANDA_OUTRO_USUARIO);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
