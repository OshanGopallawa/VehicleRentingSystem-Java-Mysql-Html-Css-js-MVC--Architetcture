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
 * Servlet implementation class UpdateReservation
 */
@WebServlet("/UpdateReservation")
public class UpdateReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateReservation() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String carno = request.getParameter("carno");
            String name = request.getParameter("name");
            String nic = request.getParameter("nic");
            String address = request.getParameter("address");
            String reserveDate = request.getParameter("reserveDate");
            String email = request.getParameter("email");

            boolean isSuccess = CustomerDBUtil.editReservation(carno, name, nic, address, reserveDate, email);

            if (isSuccess) {
            	
            	List <Reservation> r2 = CustomerDBUtil.getReservationDetails(carno);
            	request.setAttribute("resDetails", r2);
                // If the update is successful, redirect to showReservation.jsp
            	RequestDispatcher dis = request.getRequestDispatcher("showReservation.jsp");
            	
            	dis.forward(request, response);
            	
                return; // Make sure to return after sending the redirect
            } else {
                // If the update fails, you might want to handle it accordingly
                RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception for debugging
            response.getWriter().println("An error occurred. Please try again.");
        }
    }

}