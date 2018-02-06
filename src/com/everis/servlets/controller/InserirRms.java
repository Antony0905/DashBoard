package com.everis.servlets.controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.dao.RmsDao;
import com.everis.model.Rms;


public class InserirRms extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public InserirRms() {
		super();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		String dono = (String) session.getAttribute("user");
		int iddemanda = Integer.parseInt(request.getParameter("iddemanda"));
		String descdemanda = request.getParameter("descdemanda");
		String tipodemanda = request.getParameter("tipodemanda");
		String solvivo = request.getParameter("solvivo");
		String analresp = request.getParameter("analresp");
		String entrada = request.getParameter("entrada");
		String entrega = request.getParameter("entrega");
		String real = request.getParameter("real");
		String estimacliente = request.getParameter("estimacliente");
		String auxjornadas = request.getParameter("jornadas");
		int jornadas = 0;
		String auxpontos = request.getParameter("pontos");
		int pontos = 0;
		String situacao = request.getParameter("situacao");
		String linhacap = request.getParameter("linhacap");
		String inrms = request.getParameter("inrms");
		String fimrms = request.getParameter("fimrms");
		String aprms = request.getParameter("aprms");
		String indev = request.getParameter("indev");
		String fimdev = request.getParameter("fimdev");
		String inhomoeveris = request.getParameter("inhomoeveris");
		String fimhomoeveris = request.getParameter("fimhomoeveris");
		String datarelease = request.getParameter("datarelease");
		String inplanejamento = request.getParameter("inplanejamento");
		String fimplanejamento = request.getParameter("fimplanejamento");
		String analfun = request.getParameter("analfun");
		String esteira = request.getParameter("esteira");
		String inhomovivo = request.getParameter("inhomovivo");
		String fimhomovivo = request.getParameter("fimhomovivo");
		String inpreprod = request.getParameter("inpreprod");
		String fimpreprod = request.getParameter("fimpreprod");
		String demanda = request.getParameter("demanda");

		if (solvivo.equals("")) {
			solvivo = "null";
		}

		if (analresp.equals("")) {
			analresp = "null";
		}

		if (entrada.equals("")) {
			entrada = "0000-00-00";
		}

		if (entrega.equals("")) {
			entrega = "0000-00-00";
		}

		if (real.equals("")) {
			real = "0000-00-00";
		}

		if (estimacliente.equals("")) {
			estimacliente = "0000-00-00";
		}

		if (auxjornadas.equals("")) {
			auxjornadas = "0";
			jornadas = Integer.parseInt(auxjornadas);
		} else {
			jornadas = Integer.parseInt(auxjornadas);
		}

		if (auxpontos.equals("")) {
			auxpontos = "0";
			pontos = Integer.parseInt(auxpontos);
		} else {
			pontos = Integer.parseInt(auxpontos);
		}

		if (linhacap.equals("")) {
			linhacap = "null";
		}

		if (inrms.equals("")) {
			inrms = "0000-00-00";
		}

		if (fimrms.equals("")) {
			fimrms = "0000-00-00";
		}

		if (aprms.equals("")) {
			aprms = "0000-00-00";
		}

		if (indev.equals("")) {
			indev = "0000-00-00";
		}

		if (fimdev.equals("")) {
			fimdev = "0000-00-00";
		}

		if (inhomoeveris.equals("")) {
			inhomoeveris = "0000-00-00";
		}

		if (fimhomoeveris.equals("")) {
			fimhomoeveris = "0000-00-00";
		}

		if (datarelease.equals("")) {
			datarelease = "0000-00-00";
		}

		if (inplanejamento.equals("")) {
			inplanejamento = "0000-00-00";
		}

		if (fimplanejamento.equals("")) {
			fimplanejamento = "0000-00-00";
		}

		if (esteira.equals("")) {
			esteira = "null";
		}

		if (inhomovivo.equals("")) {
			inhomovivo = "0000-00-00";
		}

		if (fimhomovivo.equals("")) {
			fimhomovivo = "0000-00-00";
		}

		if (inpreprod.equals("")) {
			inpreprod = "0000-00-00";
		}

		if (fimpreprod.equals("")) {
			fimpreprod = "0000-00-00";
		}
		Rms rms = new Rms();
		rms.setDONO(dono);
		rms.setID_DEMANDA(iddemanda);
		rms.setDESCRICAO_DEMANDA(descdemanda);
		rms.setTIPO_DEMANDA(tipodemanda);
		rms.setSOLICITANTE_VIVO(solvivo);
		rms.setANAL_RESP(analresp);
		rms.setDT_ENTRADA_ESTM(entrada);
		rms.setDT_ENTREGA_ESTM(entrega);
		rms.setDT_REAL_ESTM(real);
		rms.setESTIMATIVA_CLIENTE(estimacliente);
		rms.setJORNADAS(jornadas);
		rms.setPONTOS(pontos);
		rms.setSITUACAO_ESTIMATIVA(situacao);
		rms.setLINHA_CAP(linhacap);
		rms.setINICIO_RMS(inrms);
		rms.setFIM_RMS(fimrms);
		rms.setAPROVACAO_RMS(aprms);
		rms.setINICIO_DEV(indev);
		rms.setFIM_DEV(fimdev);
		rms.setINICIO_HOMO_EVERIS(inhomoeveris);
		rms.setFIM_HOMO_EVERIS(fimhomoeveris);
		rms.setDT_RELEASE(datarelease);
		rms.setINPLANEJAMENTO(inplanejamento);
		rms.setFIMPLANEJAMENTO(fimplanejamento);
		rms.setANALISE_FUNCIONAL(analfun);
		rms.setESTEIRA(esteira);
		rms.setINICIO_HOMO_VIVO(inhomovivo);
		rms.setFIM_HOMO_VIVO(fimhomovivo);
		rms.setINICIO_PREPROD(inpreprod);
		rms.setFIM_PREPROD(fimpreprod);
		rms.setDEMANDA(demanda);

		RmsDao dao = new RmsDao();
		String retorno = null;
		try {
			retorno = dao.inserir(rms);
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
			out.println("<h1> Inserção Realizada com Sucesso!! '" + dono + "' '" + iddemanda + "' '" + "' '" + situacao
					+ "' '" + analfun + "' </h1>");
			out.println("</body>");
			out.println("</html>");
		} else {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title> Servlet </title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1> ERRO: Não foi possível inserir '" + esteira + "' '" + inhomovivo + "' '" + fimhomovivo
					+ "' '" + inpreprod + "' '" + fimpreprod + "' '" + demanda + "'  </h1>");
			out.println("</body>");
			out.println("</html>");
		}

	}

}
