package com.atm.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dbconnection {
	public Connection getConnection() {
		String url = "jdbc:postgresql://localhost:5432/atmdemo";
		String uname = "postgres";
		String pass = "Postgres";
		
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con=null;
		try {
			 con = DriverManager.getConnection(url, uname, pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}
