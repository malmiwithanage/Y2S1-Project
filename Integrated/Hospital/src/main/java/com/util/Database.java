package com.util;

import java.sql.Connection;
import java.sql.DriverManager;


public class Database {
	private static String url="jdbc:mysql://localhost:3305/Hospital";
	private static String user="root";
	private static String pass="root";
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
			
		
			
		}catch(Exception e) {
			System.out.print("database connection is not successful");
		}
		return con;
	}

}
