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
 * Servlet implementation class homeservlet
 */
@WebServlet("/homeservlet")
public class homeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		 String username = request.getParameter("username");
		 
		 List<signup> userdetails=hellodb.getuser(username);
	     request.setAttribute("Userdetails" ,userdetails);
	     
	     RequestDispatcher dis=request.getRequestDispatcher("userprofile.jsp");
		dis.forward(request,response);


}
}
