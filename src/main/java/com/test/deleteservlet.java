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
@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String deluser=request.getParameter("username");
		
		boolean result;
		
		result=hellodb.deleteuser(deluser);
		
		if(result==true) {
			RequestDispatcher dis=request.getRequestDispatcher("login.jsp");
			dis.forward(request,response);
		}
		else {
			List<signup> sig=hellodb.getuser(deluser);
			request.setAttribute("Userdetails", sig);
			
			RequestDispatcher dis=request.getRequestDispatcher("userprofile.jsp");
			dis.forward(request,response);
		}
	}

}
