package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.CustomerDBUtil;
import com.test.DBConnect;
import com.test.Reservation;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/insertVehiclePrice")
public class InsertVehiclePriceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        Statement stmt = null;
        PrintWriter out = response.getWriter(); // To send response to the client

        try {
            // Retrieve form parameters
            String vno = request.getParameter("vno");
            int price1 = Integer.parseInt(request.getParameter("price"));
            String type = request.getParameter("type");
            int maxkm = Integer.parseInt(request.getParameter("maxkm"));
            int price = Integer.valueOf(price1);
            // Insert vehicle price into the database
            con = DBConnect.getConnection();
            stmt = con.createStatement();

            String sql = "INSERT INTO vehicleprices (vno, price, type, maxkm) " +
                         "VALUES ('" + vno + "', " + price + ", '" + type + "', " + maxkm + ")";
            int rs = stmt.executeUpdate(sql);
        	boolean isTrue;
    		
        	isTrue =	VehiclePriceDBUtil.insertVehiclePrice(vno, price, type, maxkm);
        	 List <Vehicleprice> v = VehiclePriceDBUtil.getAllVehiclePrices();
        	
            if (rs > 0) {
            	request.setAttribute("vehiclePrices", v);
            	request.getRequestDispatcher("pricelist.jsp").forward(request, response);

               
            } else {
                // Insertion failed
                out.println("<h1>Insertion Failed</h1>");
                out.println("<p>Failed to insert the vehicle price into the database.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close database resources
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}