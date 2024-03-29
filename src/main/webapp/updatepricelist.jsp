<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	  <style>
		  body {
        background-image: url('res.jpg');
        background-size: cover;
        font-family: 'Arial', sans-serif;
        margin: 0;
       /* display: flex; */
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    form {
        background-color: rgba(255, 255, 255, 0.7);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        margin: 0 auto;
        position: relative;

        border: 4px solid rgba(255, 255, 255, 0.5);
        backdrop-filter: blur(10px);
        transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
    }

    form:hover {
        background-color: rgba(255, 255, 255, 0.8);
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    h2 {
        text-align: center;
        color: #333;
    }

    label {
        display: block;
        margin-top: 10px;
        color: #555;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus {
        border-color: #2ecc71;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        cursor: pointer;
    }

    input::placeholder {
        color: #888;
    }
    
    <style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="UpdatePrice" method="post">
                  <c:forEach var="vehiclePrice" items="${vehiclePrices}">
                    <input type="text" name="vno" value="${vehiclePrice.vno}"readonly>
                    <input type="text" name="price" value="${vehiclePrice.price}">
                    <input type="text" name="type" value="${vehiclePrice.type}">
                    <input type="text" name="maxkm" value="${vehiclePrice.maxkm}">
                    <input type="submit" value="Update">
                    </c:forEach>
                </form>
                

</body>
</html>