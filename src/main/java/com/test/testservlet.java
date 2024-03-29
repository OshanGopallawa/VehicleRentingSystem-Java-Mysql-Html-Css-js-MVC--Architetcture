package com.test;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class testservlet
 */
@WebServlet("/testservlet")
public class testservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username =request.getParameter("username");
		String email =request.getParameter("email");
		String password =request.getParameter("confirm");
	
		
		boolean success;
		
		success=hellodb.insertdetails(username, email, password);
		
		if(success==true) {
			try {
			List<signup> userdetails=hellodb.getuser(username);
			request.setAttribute("Userdetails" ,userdetails);
			

			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request,response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("hello.jsp");
			dis2.forward(request,response);
		}
}
	}
