<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    
    <meta charset="ISO-8859-1">
    <title>Delete Card</title>
    <style>
        body {
            background-image: url('background.jpg');
            background-size: cover;
            font-family: 'Arial', sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .form {
            background-color: rgba(255, 255, 255, 0.7);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 0 auto;
            border: 4px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(10px);
            transition: background-color 0.3s, border-color 0.3s, box-shadow 0.3s;
        }

        .form:hover {
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        p {
            text-align: center;
            color: #333;
        }

        label, input {
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
            background-color: #e74c3c;
            color: white;
            cursor: pointer;
        }

        input::placeholder {
            color: #888;
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
        <p>Delete Profile</p>
        <form action="CardDelete" method="post">
        
            <input type="text" name="cardno" placeholder="Card Number" value="<%=cardno%>" readonly>
            <input type="text" name="type" placeholder="Card Type" value="<%=type%>" readonly>
            <input type="text" name="username" placeholder="Username" value="<%=username%>" readonly>
            <input type="text" name="cvc" placeholder="CVC" value="<%=cvc%>" readonly>
            <input type="text" name="expdate" placeholder="Expiration Date" value="<%=expdate%>" readonly>
            <input type="submit" value="Delete Card" id="btn">
        </form>
    </div>
</body>
</html>