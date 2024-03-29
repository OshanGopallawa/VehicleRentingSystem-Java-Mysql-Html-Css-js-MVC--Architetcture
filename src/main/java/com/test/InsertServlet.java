package com.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String number= request.getParameter("number");
		String name = request.getParameter("name");
		String type = request.getParameter("type");
		String date = request.getParameter("date");
		String period = request.getParameter("period");
		String option = request.getParameter("option");
		
		boolean istrue;
		
		istrue = InsertDBUtil.insertvehicle(number, name, type, date, period, option);
		
		if(istrue==true) {
			
			
			
			List<Insuurance> r=InsertDBUtil.getInsuuranceDetails(number);
			request.setAttribute("resDetails", r);
			
			RequestDispatcher dis = request.getRequestDispatcher("vehicle.jsp");
			dis.forward(request, response);
		}
		
		
	}

}