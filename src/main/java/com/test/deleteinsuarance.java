package com.test;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteinsuarance")
public class deleteinsuarance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
				String number=request.getParameter("number");
				
				boolean result;
				
				result=InsertDBUtil.deleteInsuurance(number);
				
				if(result==true) {
					RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
					dis.forward(request,response);
				}
				else {
					List<Insuurance> sig=InsertDBUtil.getInsuuranceDetails(number);
					request.setAttribute("resDetails", sig);
					
					RequestDispatcher dis=request.getRequestDispatcher("");
					dis.forward(request,response);
				}
			}


		
	}