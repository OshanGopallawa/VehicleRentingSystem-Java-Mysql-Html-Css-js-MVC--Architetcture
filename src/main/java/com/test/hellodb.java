package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class hellodb {
public static boolean insertdetails(String username,String email,String password) {
		
		boolean success=false;
		
		
		//database connection
		
		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement str=con.createStatement();
			
			String sql="insert into signup values('"+username+"','"+email+"','"+password+"')";
			int result=str.executeUpdate(sql);
			
			if(result>0) {
				success=true;
			}
			else {
				success=false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return success;
		
	}
	public static List <signup>getuser(String username){

		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
		
		ArrayList<signup> si=new ArrayList<>();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con1=DriverManager.getConnection(url, user, pass);
			Statement str=con1.createStatement();
			
			String sql="select * from signup where username='"+username+"'";
			
		      ResultSet result = str.executeQuery(sql);
		     
			 
			 while(result.next()) {
				 String us=result.getString(1);
				 String em=result.getString(2);
				 String pws=result.getString(3);
				 
				 signup c=new signup(us,em,pws);
				 si.add(c);
			 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return si;
	}
	public static boolean updatedetails(String newuser,String newemail,String newpws) {
		boolean result=false;
		
		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement str=con.createStatement();
			
			String sql="update signup  set email='"+newemail+"',password='"+newpws+"'where username='"+newuser+"'";
			
			int rs=str.executeUpdate(sql);
			
			if(rs>0) {
				result=true;
			}
			else {
				result=false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static boolean deleteuser(String username) {
		boolean result=false;
		

		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pass="oshan123";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement str=con.createStatement();
			
			String sql="delete from signup where username='"+username+"'";
			
			int res=str.executeUpdate(sql);
			
			if(res>0) {
				result=true;
			}
			else {
				result=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	

}
