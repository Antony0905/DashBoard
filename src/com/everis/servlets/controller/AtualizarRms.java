package com.everis.servlets.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.faces.bean.ViewScoped;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.everis.constants.Constants;
import com.everis.dao.DaoGeneric;
import com.everis.model.Rms;

@ViewScoped
public class AtualizarRms extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DaoGeneric<Rms> daoGeneric = new DaoGeneric<Rms>();
	private Rms rms = new Rms();

	public AtualizarRms() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");		
		HttpSession session = request.getSession();
		
		String iddemanda = request.getParameter("iddemanda");
		
		rms = daoGeneric.buscarRmsObjectPorId(Rms.class, iddemanda);	
		
		String projeto = request.getParameter("projeto");
		int progresso = Integer.parseInt(request.getParameter("progresso"));
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

		try {

			if (solvivo.equals("")) {
				solvivo = "null";
			}

			if (analresp.equals("")) {
				analresp = "null";
			}

			if (entrada.equals("")) {
				rms.setDt_entrada_estimada(null);
			} else {
				rms.setDt_entrada_estimada(formatter.parse(entrada));
			}

			if (entrega.equals("")) {
				rms.setDt_entrega_estm(null);
			} else {
				rms.setDt_entrega_estm(formatter.parse(entrega));
			}

			if (real.equals("")) {
				rms.setDt_real_estm(null);
			} else {
				rms.setDt_real_estm(formatter.parse(real));
			}

			if (estimacliente.equals("")) {
				rms.setEstimativa_cliente(null);
			} else {
				rms.setEstimativa_cliente(formatter.parse(estimacliente));
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
				rms.setInicio_rms(null);
			} else {
				rms.setInicio_rms(formatter.parse(inrms));
			}

			if (fimrms.equals("")) {
				rms.setFim_rms(null);
			} else {
				rms.setFim_rms(formatter.parse(fimrms));
			}

			if (aprms.equals("")) {
				rms.setAprovacao_rms(null);
			} else {
				rms.setAprovacao_rms(formatter.parse(aprms));
			}

			if (indev.equals("")) {
				rms.setInicio_dev(null);
			} else {
				rms.setInicio_dev(formatter.parse(indev));
			}

			if (fimdev.equals("")) {
				rms.setFim_dev(null);
			} else {
				rms.setFim_dev(formatter.parse(fimdev));
			}

			if (inhomoeveris.equals("")) {
				rms.setInicio_homo_everis(null);
			} else {
				rms.setInicio_homo_everis(formatter.parse(inhomoeveris));
			}

			if (fimhomoeveris.equals("")) {
				rms.setFim_homo_everis(null);
			} else {
				rms.setFim_homo_everis(formatter.parse(fimhomoeveris));
			}

			if (datarelease.equals("")) {
				rms.setDt_release(null);
			} else {
				rms.setDt_release(formatter.parse(datarelease));
			}

			if (inplanejamento.equals("")) {
				rms.setInplanejamento(null);
			} else {
				rms.setInplanejamento(formatter.parse(inplanejamento));
			}

			if (fimplanejamento.equals("")) {
				rms.setFimplanejamento(null);
			} else {
				rms.setFimplanejamento(formatter.parse(fimplanejamento));
			}

			if (esteira.equals("")) {
				esteira = "null";
			}

			if (inhomovivo.equals("")) {
				rms.setInicio_homo_vivo(null);
			} else {
				rms.setInicio_homo_vivo(formatter.parse(inhomovivo));
			}

			if (fimhomovivo.equals("")) {
				rms.setFim_homo_vivo(null);
			} else {
				rms.setFim_homo_vivo(formatter.parse(fimhomovivo));
			}

			if (inpreprod.equals("")) {
				rms.setInicio_preprod(null);
			} else {
				rms.setInicio_preprod(formatter.parse(inpreprod));
			}

			if (fimpreprod.equals("")) {
				rms.setFim_preprod(null);
			} else {
				rms.setFim_preprod(formatter.parse(fimpreprod));
			}

			rms.setId_Demanda(iddemanda);
			rms.setProjeto(projeto);
			rms.setProgresso(progresso);
			rms.setDescricao_demanda(descdemanda);
			rms.setTipo_demanda(tipodemanda);
			rms.setSolicitante_vivo(solvivo);
			rms.setAnal_resp(analresp);
			rms.setJornadas(jornadas);
			rms.setPontos(pontos);
			rms.setSituacao_estimativa(situacao);
			rms.setLinha_cap(linhacap);
			rms.setAnalise_funcional(analfun);
			rms.setEsteira(esteira);
			rms.setDemanda(demanda);

			Boolean retorno = daoGeneric.salvar(rms);

			if (retorno) {
				session.setAttribute("rmsAtualizadoSucesso", retorno);
				response.sendRedirect(Constants.CAMINHO_PAGINA_INDEX);
			} else {
				response.sendRedirect(Constants.CAMINHO_PAGINA_ERROR);
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(Constants.CAMINHO_PAGINA_ERROR);
		}

	}

}
