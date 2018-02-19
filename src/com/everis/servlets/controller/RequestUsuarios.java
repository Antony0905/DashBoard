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
import com.everis.model.Rms;

public class RequestUsuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RequestUsuarios() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		HttpSession session = request.getSession();
		DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
		String usuario = request.getParameter("usuario");
		System.out.println(usuario);
		List<Rms> listaRmsUsuario = new ArrayList<Rms>();
		listaRmsUsuario = daoGeneric.buscarRms(Rms.class, usuario);
		int countDemandas = listaRmsUsuario.size();
		session.setAttribute("countDemandas", countDemandas);
		session.setAttribute("usuarioSelecionado", usuario);
		response.sendRedirect(Constants.CAMINHO_PAGINA_INDEX);
		
	}

}
