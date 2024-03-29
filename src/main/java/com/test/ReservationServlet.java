package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ReservationServlet
 */
@WebServlet("/ReservationServlet")
public class ReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 

	 String carno = request.getParameter("carno");
      String name = request.getParameter("name");
      String nic = request.getParameter("nic");
      String address = request.getParameter("address");
      String reserveDate = request.getParameter("reserveDate");
      String email = request.getParameter("email");

    boolean success;
    
    success = CustomerDBUtil.makeReservation(carno, name, nic, address, reserveDate, email);
     
      if(success==true)
      {
    	  try {
    		  List <Reservation> resDetails = CustomerDBUtil.getReservationDetails(carno);
    		  request.setAttribute("resDetails", resDetails);
    	  }
    	  
    	  catch(Exception e)
    	  {
    		  e.printStackTrace();
    	  }
    	  RequestDispatcher dis = request.getRequestDispatcher("showReservation.jsp");
    	  dis.forward(request, response);
      }
      else {
    	  RequestDispatcher dis = request.getRequestDispatcher("Reservation.jsp");
    	  dis.forward(request, response);
      }
      	
      
  }
		
	
}   