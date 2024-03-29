package com.test;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VehicleInsert")
public class VehicleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
		String number = request.getParameter("vehicleNumber");
		String type = request.getParameter("type");
		String date = request.getParameter("date");
		String period = request.getParameter("period");
		String option = request.getParameter("options");
		
		boolean istrue;
		istrue = providerDButil.vehicalinsert(name, number, type, date, period, option);
		
		if (istrue == true) {
			
		
			
			RequestDispatcher dis = request.getRequestDispatcher("vehicle.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}

		
		
	}

}