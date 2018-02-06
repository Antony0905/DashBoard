package com.everis.servlets.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.dao.RmsDao;
import com.everis.model.Rms;

public class ViewRms extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ViewRms() {
        super();
    }

    List<Rms> listaRms = new ArrayList<>();    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("mmenu/html/layouts/view.jsp");
		request.setAttribute("listaRms", listaRms);
		response.sendRedirect("mmenu/html/layouts/view.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		int cont = 0;
		int idDemanda;
		if(cont == 0) {
			cont++;
			idDemanda = 1234;
		}else {
			idDemanda = Integer.parseInt(request.getParameter("idDemanda"));
		}
		listaRms = new ArrayList<>();
		RmsDao dao = new RmsDao();
		Rms rms = new Rms();
		rms.setID_DEMANDA(idDemanda);
		
		try {
			listaRms = (List<Rms>) dao.getListaRmsComParametro(rms);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
