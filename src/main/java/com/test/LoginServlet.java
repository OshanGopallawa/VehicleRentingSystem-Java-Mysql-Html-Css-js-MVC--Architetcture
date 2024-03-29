package com.test;



import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean res;
		res=CustomerDBUtil.validate(username, password);
		
		if(res==true) {
			 HttpSession session = request.getSession();
				session.setAttribute("username", username);

			RequestDispatcher dis =request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
			
			
		}
		else {
			

			HttpSession session1= request.getSession();
	        session1.invalidate();
	         
			RequestDispatcher dis =request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
             
             
		}
		
		   
		
		 
		
	

}

	}
	
	