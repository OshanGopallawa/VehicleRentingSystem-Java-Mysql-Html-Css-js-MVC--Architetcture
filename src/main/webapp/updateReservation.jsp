<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="update.css">
<style>
		

    .form {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 800px;
    
      
        
    }

    p {
        margin: 10px 0;
        color: #555;
    }

    form {
        display: flex;
        flex-direction: column;
        width: 250px;
        height: 400px;
    }

    input {
        margin: 10px 0;
        padding: 10px;
        border: 1px solid #007bff; /* Border color */
        border-radius: 5px;
        background-color: rgba(255, 255, 255, 0.5); /* Input background color */
        transition: border-color 0.3s, background-color 0.3s;
    }

    input:focus {
        border-color: #0056b3; /* Border color on focus */
        background-color: rgba(255, 255, 255, 0.7); /* Background color on focus */
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
	
	 .arrow-container {
            position: fixed;
            left: 0;
            top: 0;
            height: 100%;
            width: 100px; 
            background-color: rgba(255, 0, 0, 0.2); 
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s;
        }

        .arrow-container:hover {
            background-color: rgba(200, 10, 0, 0.5);
        }

        .arrow-button {
            cursor: pointer;
            background-color: transparent;
            color: rgba(76, 175, 80, 0.9);
            font-size: 24px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            padding: 10px;
            transform: rotate(-90deg); 
            transition: color 0.3s;
        }

        .arrow-button:hover {
            color: rgba(76, 175, 80, 1); 
        }
    
</style>

<title>Insert title here</title>
</head>
<body>

     <%
        String carno=request.getParameter("carno");
     	String name = request.getParameter("name");
     	String address = request.getParameter("address");
     	String reserveDate = request.getParameter("reserveDate");
        String email=request.getParameter("email");
        String nic=request.getParameter("nic");
     %>
     
     
    <div class="form">
    <p>Update Reservation</p>
    <form action="UpdateReservation" method="post" onsubmit="return validateForm()">
    	 <input type="text" name="carno" placeholder="carno" value="<%=carno%>" readonly>
    	  <input type="text" name="name" placeholder="name" value="<%=name%>">
    	   <input type="text" name="nic" placeholder="nic" value="<%=nic%>">
        <input type="text" name="address" placeholder="address" value="<%=address%>">
        <input type="Date" name="reserveDate" placeholder="reserveDate" value="<%=reserveDate%>" >
        <input type="email"  name="email" placeholder="email" value="<%= email%>">
        
        <input type="submit" value="Update" id="btn">
     
    </form>
     <div class="arrow-container">
        <a href="showReservation.jsp" class="arrow-button">&#9654;</a>
    </div>
    </div>
    
</body>
</html>