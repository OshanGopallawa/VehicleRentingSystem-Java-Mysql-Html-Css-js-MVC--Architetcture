<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Vehicle Prices</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        h1 {
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            border: 1px solid #ddd;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        form {
            display: inline;
            margin: 0;
        }

        h2 {
            margin-top: 20px;
        }

        .add-price-form {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius:30px;
        }

        .add-price-form input[type="text"] {
            width: 70%;
            padding: 10px;
            margin: 5px 0;
        }

        .add-price-form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>Vehicle Prices</h1>
    
    <table>
        <tr>
            <th>VNO</th>
            <th>Price</th>
            <th>Type</th>
            <th>Max Kilometers</th>
            <th>Actions</th>
        </tr>
        
        <c:forEach var="vehiclePrice" items="${vehiclePrices}">
            <tr>
                <td><input type="text" name="vno" value="${vehiclePrice.vno}" readonly></td>
                <td><input type="text" name="price" value="${vehiclePrice.price}"></td>
                <td><input type="text" name="type" value="${vehiclePrice.type}"></td>
                <td><input type="text" name="maxkm" value="${vehiclePrice.maxkm}"></td>
                <td>
                    <form action="UpdatePrice" method="post">
                        <input type="submit" value="Update" style="background-color:green;border-radius:30px">
                    </form>
                    <form action="DeletePrice" method="post">
                        <input type="hidden" name="vno" value="${vehiclePrice.vno}">
                        <input type="submit" value="Delete" style="background-color:red;border-radius:30px">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <h2 style="padding-left:600px">Add New Vehicle Price</h2>
    <div class="add-price-form">
        <form action="insertVehiclePrice" method="post">
            VNO: <input type="text" name="vno"><br>
            Price: <input type="text" name="price"><br>
            Type: <input type="text" name="type"><br>
            MX KM: <input type="text" name="maxkm"><br>
            <input type="submit" value="Add Price" style="border-radius:30px;">
        </form>
    </div>
</body>
</html>
