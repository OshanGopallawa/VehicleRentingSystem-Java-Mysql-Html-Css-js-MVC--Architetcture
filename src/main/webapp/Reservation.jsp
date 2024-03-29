<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Reservation Page</title>
	  
  <style>
  
   body {
        background-image: url('images/reservationback.jpg');
        background-size: cover;
        font-family: 'Arial', sans-serif;
        margin: 0;
        display: flex;
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
          background:transparent;
        border: 4px solid rgba(255, 255, 255, 0.5);
        backdrop-filter: blur(5px);
        transition: background-color 5s, border-color 0.3s, box-shadow 0.3s;
        
    }

    form:hover {
      background-color: rgb(128, 128, 128); /* Medium gray */
 /* Semi-transparent gray background */
        
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
    
   			

	
    /* Add more styles for a better user experience */

  </style>
		
		<script type="text/javascript">
        function validateForm() {
            var carno = document.getElementById("carno").value;
            var name = document.getElementById("name").value;
            var nic = document.getElementById("nic").value;
            var address = document.getElementById("address").value;
            var reserveDate = document.getElementById("reserveDate").value;
            var email = document.getElementById("email").value;

            if (carno === "" || name === "" || nic === "" || address === "" || reserveDate === "" || email === "") {
                alert("All fields are required. Please fill in all the fields.");
                return false;
            }

            if (!isValidEmail(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            // You can add more specific validation here, e.g., for NIC format or date format.

            return true;
        }

        function isValidEmail(email) {
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
            return emailPattern.test(email);
        }
    </script>
		
		
</head>
<body background="res.jpg">

    <form action="ReservationServlet" method="post" onsubmit="return validateForm()" >
    	  <label for="name" style="color: white;">Carno:</label>
        <input type="text" id="carno" name="carno" required><br>
    
        <label for="name" style="color: white;">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="nic" style="color: white;">NIC:</label>
        <input type="text" id="nic" name="nic" required><br>

        <label for="address" style="color: white;">Address:</label>
        <input type="text" id="address" name="address" required>  <br>

        <label for="reserveDate" style="color: white;">Reserve Date:</label>
        <input type="Date" id="reserveDate" name="reserveDate" required><br>

        <label for="email" style="color: white;">Email:</label>
        <input type="text" id="email" name="email" required><br>

        <input type="submit" value="Make Reservation">
        
       
        
    </form>
		 <div class="arrow-container">
        <a href="home.jsp" class="arrow-button">&#9654;</a>
    </div>
</body>
</html>