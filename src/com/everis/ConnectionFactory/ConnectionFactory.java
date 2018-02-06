package com.everis.ConnectionFactory;

import java.sql.*;

public class ConnectionFactory {

	private String user = "root";
	private String password = "";
	private String url = "jdbc:mysql://localhost:3306/dashboard2";
	private String Driver = "com.mysql.jdbc.Driver";

	public Connection getConnection() {

		try {
			Class.forName(Driver);
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (
		ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}
}
