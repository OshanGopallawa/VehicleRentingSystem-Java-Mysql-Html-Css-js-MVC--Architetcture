package com.test;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminloginServlet
 */
@WebServlet("/AdminloginServlet")
public class AdminloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String aname = request.getParameter("aname");
		String pass = request.getParameter("pass");
		boolean res;
		res=CustomerDBUtil.validateA(aname, pass);
		if(res==true)
		{
			RequestDispatcher dis =request.getRequestDispatcher("Admindash.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis =request.getRequestDispatcher("Adminlogin.jsp");
			dis.forward(request, response);
		}
		
	}

}
