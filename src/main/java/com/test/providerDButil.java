package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class providerDButil {

	//login
public static boolean validate(String userName,String password){
		
		boolean success=false;
		
		
		//crate database connection 
		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
		
		
		//validate
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement str=con.createStatement();
			
			
			
			String sql = "select * from users where uname = '"+userName+"' and upwd = '"+password+"' ";
			
			ResultSet rs = str.executeQuery(sql);
			
			if(rs.next()) {
				success=true;
				
			}
			else {
				success=false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return success;
		
	}
	
//registration


	
	public static boolean vehicalinsert (String name, String number, String type, String date, String period, String option ) {
		
		boolean issu=false;
		
		
		//crate database connection 
				
		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
				
				try {
					
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con=DriverManager.getConnection(url, user, pass);
					Statement str=con.createStatement();
					
					String sql = "insert into vehiclein values (0, '"+name+"', '"+number+"', '"+type+"', '"+date+"', '"+period+"', '"+option+"')";
					int vs = str.executeUpdate(sql);
					
					if(vs>0) {
						
						issu = true;
						
					}else {
						
						issu = false;
					}
					
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		
				return issu;
	
		
	}
	
	//validation

	public static List<Vehicle> validate(String number){
		
		ArrayList<Vehicle> veh =new ArrayList();
		
		//crate database connection 
		String url = "jdbc:mysql://localhost:3306/provider";
		String user = "root";
		String pwd = "root123";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");	
			
			Connection con = DriverManager.getConnection(url, user, pwd);
			Statement stmt = con.createStatement();
			
			String sql = "select * from vehicle where vnumber = '"+number+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String vnumber = rs.getString(3);
				String type = rs.getString(4);
				String date = rs.getString(5);
				String option = rs.getString(6);
				
				Vehicle v = new Vehicle(id, name, vnumber, type, date, option);
				veh.add(v);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return veh;
	}

}





