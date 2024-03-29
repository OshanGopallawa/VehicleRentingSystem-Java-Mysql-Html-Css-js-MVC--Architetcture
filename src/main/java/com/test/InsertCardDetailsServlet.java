package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.DBConnect;
import com.mysql.jdbc.Statement;

@WebServlet("/InsertCardDetailsServlet")
public class InsertCardDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String cardno = request.getParameter("cardno")  ;
    	String type = request.getParameter("type");
    	String username = request.getParameter("username")  ;
    	String cvc = request.getParameter("cvc");
    	String expdate = request.getParameter("expdate");
    	
    	boolean success;
    	
    	success = CardDBUtil.insertcarddetaisl(cardno,type,username,cvc,expdate);
    	
    	if (success == true)
    		try
    			{
    				List<Card> c = CardDBUtil.getCardDetails(cardno);
    				
    				request.setAttribute("cardDetails", c);
    				RequestDispatcher dis = request.getRequestDispatcher("showcard.jsp");
    		    	
    		    	dis.forward(request,response);
    			}
    	
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
  
    	
    }

}