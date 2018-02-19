package com.everis.servlets.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.constants.Constants;
import com.everis.dao.DaoGeneric;
import com.everis.model.Rms;

public class BuscarRms extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BuscarRms() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("idDemanda");

		DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();

		List<Rms> listaRms = daoGeneric.buscarRmsPorId(Rms.class, id);
		HttpSession sessao = request.getSession();
		sessao.setAttribute("listaRms", listaRms);
		if (id != null) {
			response.sendRedirect(Constants.CAMINHO_PAGINA_EDITAR_DEMANDA);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		String id = request.getParameter("pesquisa");
		Boolean idPesquisadoNaoEncontrado = false;
		DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();

		List<Rms> listaRms = daoGeneric.buscarRmsPorId(Rms.class, id);
		if(listaRms.isEmpty()||listaRms == null) {
			idPesquisadoNaoEncontrado = true;
		}
		
		HttpSession sessao = request.getSession();
		sessao.setAttribute("listaRms", listaRms);
		sessao.setAttribute("idPesquisadoNaoEncontrado", idPesquisadoNaoEncontrado);
		response.sendRedirect(Constants.CAMINHO_PAGINA_EDITAR_DEMANDA);
	}

}
