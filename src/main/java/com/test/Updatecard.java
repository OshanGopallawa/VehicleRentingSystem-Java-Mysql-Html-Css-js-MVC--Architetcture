package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 */
@WebServlet("/Updatecard")
public class Updatecard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  try {
		        String cardno = request.getParameter("cardno");
		        String type = request.getParameter("type");
		        String username = request.getParameter("username");
		        String cvc = request.getParameter("cvc");
		        String expdate = request.getParameter("expdate");

		        boolean isSuccess = CardDBUtil.editCard(cardno, type, username, cvc, expdate);

		        if (isSuccess) {
		            List<Card> cards = CardDBUtil.getCardDetails(cardno);
		            request.setAttribute("cardDetails", cards);
		            // If the update is successful, redirect to showcard.jsp
		            RequestDispatcher dis = request.getRequestDispatcher("showcard.jsp");
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