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
 * Servlet implementation class updateservlet
 */
@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String newuser=request.getParameter("username");
		String newemail=request.getParameter("email");
		String newpws=request.getParameter("confirm");
		
		
		boolean istrue;
		istrue=hellodb.updatedetails(newuser, newemail, newpws);
		if(istrue==true) {
			List<signup> sig=hellodb.getuser(newuser);
			request.setAttribute("Userdetails", sig);
			RequestDispatcher dis=request.getRequestDispatcher("userprofile.jsp");
			dis.forward(request,response);
		}
		else {
			List<signup> sig=hellodb.getuser(newuser);
			request.setAttribute("Userdetails", sig);
			
			RequestDispatcher dis=request.getRequestDispatcher("userprofile.jsp");
			dis.forward(request,response);
		}
		
	}

}
