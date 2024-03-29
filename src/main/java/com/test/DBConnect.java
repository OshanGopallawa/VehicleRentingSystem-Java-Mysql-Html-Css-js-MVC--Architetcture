package com.test;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String url="jdbc:mysql://localhost:3306/vehiclerent";
	static String user="root";
	static String pass="oshan123";
	
	private static Connection con;
	
	public static Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con =DriverManager.getConnection(url, user, pass);
		}
		
		catch(Exception e){
			
			System.out.println("Database connection is not success !!");
		}
		
		return con;
		
	}
}
