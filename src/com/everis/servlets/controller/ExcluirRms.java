package com.everis.servlets.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.everis.dao.RmsDao;
import com.everis.model.Rms;

public class ExcluirRms extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ExcluirRms() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String idDemanda = request.getParameter("idDemanda");
		Rms rms = new Rms();
		RmsDao dao = new RmsDao();
		rms.setID_DEMANDA(Integer.parseInt(idDemanda));
		String retorno = "falha";

		try {
			retorno = dao.deleteRms(rms);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (retorno.equals("sucesso")) {
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
