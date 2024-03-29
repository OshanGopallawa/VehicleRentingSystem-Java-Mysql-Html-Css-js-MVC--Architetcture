package com.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteservlet
 */
@WebServlet("/Reservationdelete")
public class Reservationdelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String carno=request.getParameter("carno");
		
		boolean result;
		
		result=CustomerDBUtil.deleteReservation(carno);
		
		if(result==true) {
			RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
			dis.forward(request,response);
		}
		else {
			List<Reservation> sig=CustomerDBUtil.getReservationDetails(carno);
			request.setAttribute("resDetails", sig);
			
			RequestDispatcher dis=request.getRequestDispatcher("Reservation.jsp");
			dis.forward(request,response);
		}
	}

}