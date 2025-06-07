package com.eshopper.util;

import java.sql.Connection;

public class dbConnection {

	public static Connection getConnection() {
	  try {
		  String url = "jdbc:mysql://localhost:3306/" + connectionData.DATABASE;
		  String username = connectionData.USERNAME;
		  String password = connectionData.PASSWORD;
		  
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  System.out.println("✅ Database connected successfully");
	 
		  return java.sql.DriverManager.getConnection(url, username, password);
		  
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
