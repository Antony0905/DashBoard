package com.everis.dao;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.everis.ConnectionFactory.ConnectionFactory;
import com.everis.model.Usuarios;

public class UsuariosDao {

	private Connection connection;

	public UsuariosDao() {
		connection = new ConnectionFactory().getConnection();
	}

	public String Inserir(Usuarios usuarios) {
		String sql;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			sql = "select * from usuarios where usuario = ?";
			ps = connection.prepareStatement(sql);
			ps.setString(1, usuarios.getUsuario());
			rs = ps.executeQuery();
			if (rs.next() == true) {
				return "falha";
			} else {
				sql = "insert into usuarios(nome, departamento, usuario, senha, nivel) values(?,?,?,?,?)";
				ps = connection.prepareStatement(sql);
				ps.setString(1, usuarios.getNome());
				ps.setString(2, usuarios.getDepartamento());
				ps.setString(3, usuarios.getUsuario());
				ps.setString(4, usuarios.getSenha());
				ps.setInt(5, usuarios.getNivel());
				ps.executeUpdate();
				return "sucesso";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {

		}
		return "falha";
	}

	// Método para autenticar usuário

	public boolean verificaUsuario(Usuarios usuarios) throws SQLException {
		String sql = "select * from usuarios where usuario = ? and senha = ?";
		ResultSet rs = null;
		PreparedStatement ps = null;
		try {
			ps = connection.prepareStatement(sql);
			ps.setString(1, usuarios.getUsuario());
			ps.setString(2, usuarios.getSenha());
			rs = ps.executeQuery();
			if (rs.next() == true) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			ps.close();
			rs.close();
			connection.close();
		}
		return false;
	}

}
