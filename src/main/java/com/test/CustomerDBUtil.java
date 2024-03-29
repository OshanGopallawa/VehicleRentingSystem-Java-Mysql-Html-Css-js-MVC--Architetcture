package com.test;


import java.net.http.HttpRequest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class CustomerDBUtil {

	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
	 static boolean success;

  
	
	
	 
	public static boolean validate(String username,String password)
	{
		 
		
				
		try {
			

			String url="jdbc:mysql://localhost:3306/vehiclerent";
			String user="root";
			String pass="oshan123";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, pass);
			Statement str=con.createStatement();
			
			
			String sql = "select * from signup where username='"+username+"'and password='"+password+"'";
			rs = str.executeQuery(sql);

			if(rs.next())
			{
				success=true;
				
			
				
			}
			else {
				success=false;
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		//validate
	
		return success;
}
	public static boolean validateA(String aname, String pass)
	{
		
		
		boolean res = false;
				
		try {
			
			String url="jdbc:mysql://localhost:3306/vehiclerent";
			String user="root";
			String passs="oshan123";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(url, user, passs);
			Statement str=con.createStatement();
			
			
			String sql = "select * from admin where aname='"+aname+"'and pass='"+pass+"'";
			rs = str.executeQuery(sql);
			
		
			
			
			if(rs.next())
			{
				
				res=true;
			}
			else {
				res=false;
			}
		  }
		
		catch(Exception e)
		{
			e.printStackTrace();
		}

			
		
	    
		
		return res;
	
	

}//insert
	public static boolean makeReservation(String carno,String name, String nic, String address, String reserveDate, String email) {
        
		 boolean isSuccess =false;
		 try {
			 	

				String url="jdbc:mysql://localhost:3306/vehiclerent";
				String user="root";
				String pass="oshan123";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, pass);
				Statement str=con.createStatement();
				
				String sql= "Insert into new_table VALUES ('" + carno + "', '" + name + "', '" + nic + "', '" + address + "', '" + reserveDate + "', '" + email + "')";
				int rs= str.executeUpdate(sql);
		 
				
				if(rs>0) {
					isSuccess = true;
				}
				
				else { 
					isSuccess = false;
				}
		
		            }
		 catch (Exception e) {
	            e.printStackTrace();
	        }
		           
		        Reservation rs = new Reservation(carno,name,nic,address,reserveDate,email);
		        ArrayList <Reservation> r = new ArrayList<>();
		        
		        r.add(rs);
		 
			return isSuccess; 
			
			
			
	 }//view
	/*public static Reservation getSingleReservation(String carno) {
		 Reservation r = null;
		 try {
			 

				
			 String query ="select * from new_table where carno=?";
			 PreparedStatement pt = con.prepareStatement(query);
			 ResultSet rs = pt.executeQuery();
			 pt.setString(1, carno);
			 
			 while(rs.next())
			 {
				 String rid = rs.getString("carno");
				 String name =rs.getString("name");
				 String nic = rs.getString("nic");
				 String address = rs.getString("address");
				 String reserveDate = rs.getString("reserveDate");
				 String email = rs.getString("email");
				 
				 r = new Reservation(rid,name,nic,address,reserveDate,email);
			 }
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		 return r;
		 
		 }
		 */
		 
	//update
	    public static boolean editReservation(String carno, String name, String nic, String address,
	            String reserveDate, String email) {
	        boolean isSuccess = false;

	        try {
	            // Obtain a database connection

				String url="jdbc:mysql://localhost:3306/vehiclerent";
				String user="root";
				String pass="oshan123";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, pass);
				Statement str=con.createStatement();
				
	            // Create the SQL update statement
	            String sql = "UPDATE new_table SET name='"+name+"', nic='"+nic+"', address='"+address+"', reserveDate='"+reserveDate+"', email='"+email+"'"+"WHERE carno='"+carno+"'";
	            
	           int rs = str.executeUpdate(sql);
	           
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
	    //update view
	    
	    public static List <Reservation> getReservationDetails(String carno)
	    {
	    	ArrayList<Reservation> r4 = new ArrayList<>();
	    	
	    	try {
	    		

				String url="jdbc:mysql://localhost:3306/vehiclerent";
				String user="root";
				String pass="oshan123";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, pass);
				Statement str=con.createStatement();
				
	    		String sql = "select * from new_table where carno='"+carno + "'";
	    		
	    		rs = str.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			String carno1 = rs.getString(1);
	    			String name = rs.getString(2);
	    			String nic = rs.getNString(3);
	    			String address = rs.getString(4);
	    			String reserveDate = rs.getNString(5);
	    			String email = rs.getNString(6);
	    			
	    			Reservation r1 = new Reservation(carno1,name,nic,address,reserveDate,email);
	    			
	    			r4.add(r1);
	    		}
	    	}
	    	catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	return r4;
	    }
	    
	    
	    //delete
	    public static boolean deleteReservation(String carno) {
			boolean result=false;
			

		
			
			try {

				String url="jdbc:mysql://localhost:3306/vehiclerent";
				String user="root";
				String pass="oshan123";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection(url, user, pass);
				Statement str=con.createStatement();
				
				
				String sql="delete from new_table where carno='"+carno+"'";
				
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







