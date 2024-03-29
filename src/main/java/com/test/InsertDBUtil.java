package com.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InsertDBUtil {
	
	//InsertInsuurance
	
	public static boolean insertvehicle(String number,String name,String type, String date, String period,String option) {
		boolean in= false;
		
		//crate database connection 
		String url="jdbc:mysql://localhost:3306/vehiclerent";
		String user="root";
		String pwd="oshan123";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");	
			
			Connection con = DriverManager.getConnection(url, user, pwd);
			Statement stmt = con.createStatement();
			
			// Create the SQL insert statement
			String sql = "insert into vehicled values ('"+number+"','"+name+"','"+type+"','"+date+"','"+period+"','"+option+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0){
				
				in = true;
				
			}else {
				
				in = false;
				
			}
		
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return in;
		
		
	}
	
	
	//UpdateInsuurance
	
	 public static boolean updateinssurance(String number, String name, String type, String date, String period, String option) {
	        boolean isSuccess = false;
	        String url="jdbc:mysql://localhost:3306/vehiclerent";
			String user="root";
			String pwd="oshan123";

	        try {
	        	Class.forName("com.mysql.cj.jdbc.Driver");	
	        	
	        	Connection con = DriverManager.getConnection(url, user, pwd);
				Statement stmt = con.createStatement();
				
	            // Create the SQL update statement
				 String sql = "update vehicled set name ='"+name+"',type='"+type+"',date='"+date+"',period='"+period+"',option='"+option+"'where number='"+number+"'";

	           
	         /*   PreparedStatement stmt1 = con.prepareStatement(sql);
	            
	        
	            stmt1.setString(1, name);
	            stmt1.setString(2, type);
	            stmt1.setString(3, date);
	            stmt1.setString(4, period);
	            stmt1.setString(5, option);
	            stmt1.setString(6, number);*/
	            

	            int rs = stmt.executeUpdate(sql);

	          
	           
	           if(rs>0)
	           {
	        	   isSuccess = true;
	           }
	           
	           else {
	        	   isSuccess = false;
	           }
	           
	            }
	      
	            catch (Exception e) {
	                e.printStackTrace();
	                // Handle any closing exceptions
	            }
	        

	        return isSuccess;
	    }
	 

	 public static Insuurance getSingleReservation(String number) {
		 		Insuurance r = null;
		 		String url="jdbc:mysql://localhost:3306/vehiclerent";
				String user="root";
				String pwd="oshan123";
		 
		 
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");	
			
				
				Connection con = DriverManager.getConnection(url, user, pwd);
				Statement stmt = con.createStatement();
			 
			 String query ="select * from vehicled where number=?";
			 PreparedStatement pt = con.prepareStatement(query);
			 ResultSet rs = pt.executeQuery();
			 pt.setString(1,number);
			 
			 while(rs.next())
			 {
				 String number1 = rs.getString("number");
				 String name =rs.getString("name");
				 String type = rs.getString("type");
				 String date = rs.getString("date");
				 String period = rs.getString("period");
				 String option = rs.getString("option");
				 
				 r = new Insuurance(number1, name, type, date, period, option);
			 }
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return r;
		 
	 }
	 
	 //getInsuurance
	 
	 public static List <Insuurance> getInsuuranceDetails(String number)
	    {
	    	ArrayList<Insuurance> r4 = new ArrayList<>();
	    	
	    	String url="jdbc:mysql://localhost:3306/vehiclerent";
			String user="root";
			String pwd="oshan123";
	    	
	    	try {
	    		Connection con = DriverManager.getConnection(url, user, pwd);
	    		
	    		  String sql = "SELECT * FROM vehicled WHERE number=?";
	                PreparedStatement stmt = con.prepareStatement(sql);
	                stmt.setString(1, number);
	                ResultSet rs = stmt.executeQuery();

	                while (rs.next()) {
	                    String number1 = rs.getString(1);
	                    String name = rs.getString(2);
	                    String type = rs.getString(3);
	                    String date = rs.getString(4);
	                    String period = rs.getString(5);
	                    String option = rs.getString(6);

	                    Insuurance insurance = new Insuurance(number1, name, type, date, period, option);
	                    r4.add(insurance);
	                }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	       
	    	return r4;
	    }
	 
	 
	 //DeleteInsuurance
	 public static boolean deleteInsuurance(String number) {
			boolean result=false;
			
			String url="jdbc:mysql://localhost:3306/vehiclerent";
			String user="root";
			String pwd="oshan123";
		
			
			try {
				Connection con = DriverManager.getConnection(url, user, pwd);
				Statement stmt = con.createStatement();
				
				String sql="delete from vehicled where number='"+number+"'";
				
				int res=stmt.executeUpdate(sql);
				
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