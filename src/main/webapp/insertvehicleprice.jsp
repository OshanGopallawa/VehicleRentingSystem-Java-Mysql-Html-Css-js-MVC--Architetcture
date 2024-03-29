<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.test.VehiclePriceDBUtil" %>

<%
    String vno = request.getParameter("vno");
    int price = Integer.parseInt(request.getParameter("price"));
    String type = request.getParameter("type");
    int maxkm = Integer.parseInt(request.getParameter("maxkm"));
    
    int price1 = (int ) price;

    if (VehiclePriceDBUtil.insertVehiclePrice(vno, price1, type, maxkm)) {
        response.sendRedirect("pricelist.jsp");
    } else {
        out.println("Failed to insert the vehicle price.");
    }
%>
