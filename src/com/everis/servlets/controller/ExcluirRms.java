package com.everis.servlets.controller;
 
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.dao.DaoGeneric;
import com.everis.model.Rms;

public class ExcluirRms extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
	public ExcluirRms() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		Rms rms = new Rms();
		int idDemanda = Integer.parseInt(request.getParameter("idDemanda"));
		rms.setId_Demanda(idDemanda);
		boolean retorno = daoGeneric.removePorId(rms, idDemanda);

		if (retorno) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> Sucesso </h1>");
			out.println("</body>");
			out.println("</html>");
			response.sendRedirect("mmenu/html/pages/profile.jsp");
		} else {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> Falha </h1>");
			out.println("</body>");
			out.println("</html>");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
