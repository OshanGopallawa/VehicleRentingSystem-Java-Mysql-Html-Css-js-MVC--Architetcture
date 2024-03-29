package com.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CardDeleteServlet
 */
@WebServlet("/CardDelete")
public class CardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        String cardno = request.getParameter("cardno");

	        boolean success;

	        // Assuming you have a CardDBUtil.deleteCard method to delete a card by card number
	        success = CardDBUtil.deleteCard(cardno);

	        if (success) {
	            // If the deletion is successful, redirect to home.jsp
	            response.sendRedirect("home.jsp");
	        } else {
	            // If the deletion fails, forward back to the card details page or any other page
	            request.setAttribute("error", "Card deletion failed.");
	            RequestDispatcher dispatcher = request.getRequestDispatcher("cardDetails.jsp");
	            dispatcher.forward(request, response);
	        }
	    }
	}