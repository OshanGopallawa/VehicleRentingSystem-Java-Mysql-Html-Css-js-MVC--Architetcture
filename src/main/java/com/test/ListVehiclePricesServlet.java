package com.test;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ListVehiclePricesServlet")
public class ListVehiclePricesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
        List<Vehicleprice> vehiclePrices = VehiclePriceDBUtil.getAllVehiclePrices();

       
        request.setAttribute("vehiclePrices", vehiclePrices);

        
        request.getRequestDispatcher("/pricelist.jsp").forward(request, response);
    }
}
 