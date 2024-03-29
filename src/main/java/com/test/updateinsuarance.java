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

@WebServlet("/updateinsuarance")
public class updateinsuarance extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  try {
	            String number = request.getParameter("number");
	            String name = request.getParameter("name");
	            String type = request.getParameter("type");
	            String date = request.getParameter("date");
	            String period = request.getParameter("period");
	            String option = request.getParameter("option");

	            
	            
	            
	            
	      boolean isSuccess =InsertDBUtil.updateinssurance(number, name, type, date, period, option);

	            if (isSuccess==true) {
	            	
	            	List <Insuurance> r2 = InsertDBUtil.getInsuuranceDetails(number);
	            	request.setAttribute("resDetails", r2);
	                // If the update is successful, redirect to vehicle.jsp
	            	
	            	RequestDispatcher dis = request.getRequestDispatcher("vehicle.jsp");
	            	
	            	dis.forward(request, response);
	            	
	                return; // Make sure to return after sending the redirect
	            } else {
	                // If the update fails, you might want to handle it accordingly
	            	
	            	
	                RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
	                dis.forward(request, response);
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); // Log the exception for debugging
	            response.getWriter().println("An error occurred. Please try again.");
	        }
		  
		  }
	
		
	}