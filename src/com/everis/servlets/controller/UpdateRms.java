package com.everis.servlets.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.dao.RmsDao;
import com.everis.model.Rms;

public class UpdateRms extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateRms() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		int idDemanda = Integer.parseInt(request.getParameter("idDemanda"));
//		List<Rms> listaRms = new ArrayList<>();
//		RmsDao dao = new RmsDao();
//		Rms rms = new Rms();
//		rms.setID_DEMANDA(idDemanda);
		
//		try {
//			listaRms = (List<Rms>) dao.getListaRmsComParametro(rms);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		List<String> listaRms = new ArrayList<>();
		listaRms.add("Maria");
		listaRms.add("Jose");
		listaRms.add("Matheus");
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("mmenu/html/layouts/view.jsp");
		request.setAttribute("listaRms", listaRms);
		
		dispatcher.forward(request, response);
		
		// if(idDemanda.equals("")) {
		// idDemanda = "0";
		// }
		// HttpSession req = request.getSession();
		// req.setAttribute("idDemanda", idDemanda);
		// response.sendRedirect("mmenu/html/layouts/view.jsp");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
