package com.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeletePrice
 */
@WebServlet("/DeletePrice")
public class DeletePrice extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String vno = request.getParameter("vno");

      
   	
        if (VehiclePriceDBUtil.deleteVehiclePrice(vno)) {
        	 List <Vehicleprice> v1 = VehiclePriceDBUtil.getAllVehiclePrices();
        	 request.setAttribute("vehiclePrices", v1);
         	request.getRequestDispatcher("pricelist.jsp").forward(request, response);

           
        } else {
            response.getWriter().println("Delete failed");
        }
    }
} 