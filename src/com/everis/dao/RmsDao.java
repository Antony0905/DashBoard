package com.everis.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.everis.ConnectionFactory.ConnectionFactory;
import com.everis.model.Rms;

public class RmsDao {

	private Connection connection;
	Rms rms = new Rms();

	public RmsDao() {
		connection = new ConnectionFactory().getConnection();
	}

	public String inserir(Rms rms) throws SQLException {
		String sql;
		PreparedStatement ps = null;
		try {
			sql = "insert into RMS(ID_DEMANDA, DONO, DESCRICAO_DEMANDA, TIPO_DEMANDA, SOLICITANTE_VIVO, ANAL_RESP, DT_ENTRADA_ESTM, DT_ENTREGA_ESTM, DT_REAL_ESTM, ESTIMATIVA_CLIENTE, JORNADAS, PONTOS, SITUACAO_ESTIMATIVA, LINHA_CAP, INICIO_RMS, FIM_RMS, APROVACAO_RMS, INICIO_DEV, FIM_DEV, INICIO_HOMO_EVERIS, FIM_HOMO_EVERIS, DT_RELEASE, INICIO_PLANEJAMENTO, FIM_PLANEJAMENTO, ANALISE_FUNCIONAL, ESTEIRA, INICIO_HOMO_VIVO, FIM_HOMO_VIVO, INICIO_PREPROD, FIM_PREPROD, DEMANDA) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = connection.prepareStatement(sql);
			ps.setInt(1, rms.getID_DEMANDA());
			ps.setString(2, rms.getDONO());
			ps.setString(3, rms.getDESCRICAO_DEMANDA());
			ps.setString(4, rms.getTIPO_DEMANDA());
			ps.setString(5, rms.getSOLICITANTE_VIVO());
			ps.setString(6, rms.getANAL_RESP());
			ps.setString(7, rms.getDT_ENTRADA_ESTM());
			ps.setString(8, rms.getDT_ENTREGA_ESTM());
			ps.setString(9, rms.getDT_REAL_ESTM());
			ps.setString(10, rms.getESTIMATIVA_CLIENTE());
			ps.setInt(11, rms.getJORNADAS());
			ps.setInt(12, rms.getPONTOS());
			ps.setString(13, rms.getSITUACAO_ESTIMATIVA());
			ps.setString(14, rms.getLINHA_CAP());
			ps.setString(15, rms.getINICIO_RMS());
			ps.setString(16, rms.getFIM_RMS());
			ps.setString(17, rms.getAPROVACAO_RMS());
			ps.setString(18, rms.getINICIO_DEV());
			ps.setString(19, rms.getFIM_DEV());
			ps.setString(20, rms.getINICIO_HOMO_EVERIS());
			ps.setString(21, rms.getFIM_HOMO_EVERIS());
			ps.setString(22, rms.getDT_RELEASE());
			ps.setString(23, rms.getINPLANEJAMENTO());
			ps.setString(24, rms.getFIMPLANEJAMENTO());
			ps.setString(25, rms.getANALISE_FUNCIONAL());
			ps.setString(26, rms.getESTEIRA());
			ps.setString(27, rms.getINICIO_HOMO_VIVO());
			ps.setString(28, rms.getFIM_HOMO_VIVO());
			ps.setString(29, rms.getINICIO_PREPROD());
			ps.setString(30, rms.getFIM_PREPROD());
			ps.setString(31, rms.getDEMANDA());
			ps.executeUpdate();
			return "sucesso";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ps.close();
			connection.close();
		}
		return "falha";
	}

	public List<Rms> getListaRms(String nome) throws SQLException {
		String sql = "select DONO, ID_DEMANDA, DESCRICAO_DEMANDA, ESTEIRA, DT_RELEASE, DEMANDA from rms where DONO = ?;";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Rms> listaRms = new ArrayList<>();

		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, nome);
			rs = ps.executeQuery();
			while (rs.next()) {
				Rms rms = new Rms();
				rms.setID_DEMANDA(rs.getInt("ID_DEMANDA"));
				rms.setDESCRICAO_DEMANDA(rs.getString("DESCRICAO_DEMANDA"));
				rms.setESTEIRA(rs.getString("ESTEIRA"));
				rms.setDT_RELEASE(rs.getString("DT_RELEASE"));
				rms.setDEMANDA(rs.getString("DEMANDA"));
				listaRms.add(rms);
			}
			return listaRms;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ps.close();
			rs.close();
			connection.close();
		}

		return null;
	}
	
	public String deleteRms(Rms rms) throws SQLException {
		String sql = "delete from rms where ID_DEMANDA = ?";
		PreparedStatement ps = null;
		
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, rms.getID_DEMANDA());
			ps.executeUpdate();
			return "sucesso";
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ps.close();
			connection.close();
		}
		return "falha";
	}
	
	
	public List<Rms> getListaRmsComParametro(Rms rms) throws SQLException{
		String sql = "select * from rms where ID_DEMANDA = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		List<Rms> listaRms = new ArrayList<>();
		
		try {
			ps = connection.prepareStatement(sql);
			ps.setInt(1, rms.getID_DEMANDA());
			rs = ps.executeQuery();
			if(rs.next() == true) {
				Rms rms2 = new Rms();
				rms2.setID_DEMANDA(rs.getInt("ID_DEMANDA"));
				rms2.setDESCRICAO_DEMANDA(rs.getString("DESCRICAO_DEMANDA"));
				rms2.setESTEIRA(rs.getString("ESTEIRA"));
				rms2.setDT_RELEASE(rs.getString("DT_RELEASE"));
				rms2.setDEMANDA(rs.getString("DEMANDA"));
				rms2.setANAL_RESP(rs.getString("ANAL_RESP"));
				listaRms.add(rms2);
			}
			return listaRms;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ps.close();
			rs.close();
			connection.close();
		}
		 
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
