package com.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.CustomerDBUtil;
import com.test.Reservation;

/**
 * Servlet implementation class UpdatePrice
 */
@WebServlet("/UpdatePrice")
public class UpdatePrice extends HttpServlet {
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String vno = request.getParameter("vno");
	        int price1 = Integer.parseInt(request.getParameter("price"));
	        String type = request.getParameter("type");
	        int maxkm = Integer.parseInt(request.getParameter("maxkm"));
	        int price = Integer.valueOf(price1) ;
	        boolean isTrue;
    		
        	isTrue =	VehiclePriceDBUtil.updateVehiclePrice(vno, price, type, maxkm);
        	 List <Vehicleprice> v = VehiclePriceDBUtil.getAllVehiclePrices();

	        if (VehiclePriceDBUtil.updateVehiclePrice(vno, price, type, maxkm)) {
	        	 List <Vehicleprice> v1 = VehiclePriceDBUtil.getAllVehiclePrices();
	        	 Vehicleprice r2 = VehiclePriceDBUtil.getSingleVehiclePrice(vno);
	        	 request.setAttribute("vehiclePrices", v1);
	            	request.getRequestDispatcher("pricelist.jsp").forward(request, response);

	        } else {
	            response.getWriter().println("Update failed");
	        }
	  
	   }
}  