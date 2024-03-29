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
 * Servlet implementation class inloginservlet
 */
@WebServlet("/inloginservlet")
public class inloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("username");
		String pass=request.getParameter("password");
		
		boolean result;
		result=providerDButil.validate(uname, pass);
		
		if(result==true) {
			RequestDispatcher dis= request.getRequestDispatcher("insertinsuarance.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis= request.getRequestDispatcher("insurancelogin.jsp");
			dis.forward(request, response);
			
		}
		
		
		
	}

	

}
