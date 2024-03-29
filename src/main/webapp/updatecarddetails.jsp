<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
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


</head>
<body>
		<%
    String cardno = request.getParameter("cardno");
    String type = request.getParameter("type");
    String username = request.getParameter("username");
    String cvc = request.getParameter("cvc");
    String expdate = request.getParameter("expdate");
%>

<div class="form">
    <h2 align="center">Update Card Details</h2>
    <form action="Updatecard" method="post" onsubmit="return validateForm()">
        <input type="text" name="cardno" placeholder="Card Number" value="<%=cardno%>" readonly>
        <input type="text" name="type" placeholder="Card Type" value="<%=type%>">
        <input type="text" name="username" placeholder="Card Username" value="<%=username%>">
        <input type="text" name="cvc" placeholder="CVC" value="<%=cvc%>">
        <input type="date" name="expdate" placeholder="Expiration Date" value="<%=expdate%>">
        
        <input type="submit" value="Update" id="btn">
    </form>
    <div class="arrow-container">
        <a href="showcard.jsp" class="arrow-button">&#9654;</a>
    </div>
</div>
		

</body>
</html>