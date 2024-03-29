<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	  <style>
		  body {
        background-image: url('images/cc.jpg');
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
	<script type="text/javascript">
        function validateForm() {
            var vno = document.getElementById("vno").value;
            var price = document.getElementById("price").value;
            var type = document.getElementById("type").value;
            var maxkm = document.getElementById("maxkm").value;

            if (vno === "" || price === "" || type === "" || maxkm === "") {
                alert("All fields are required. Please fill in all the fields.");
                return false;
            }

            if (isNaN(price)) {
                alert("Price must be a number.");
                return false;
            }

            if (isNaN(maxkm)) {
                alert("Max Kilometers must be a number.");
                return false;
            }

            return true;
        }
    </script>

</head>
<body>
    <h2>Add New Vehicle Price</h2>
    <br>
    
    <form action="insertVehiclePrice" method="post"  onsubmit="return validateForm()">
    
        VNO: <input type="text" id="vno" name="vno" ><br>
        
        Price: <input type="text" id="price" name="price" ><br>
        
        Type: <input type="text" id="type" name="type" ><br>
        
        Max Kilometers: <input type="text" id="maxkm" name="maxkm" ><br>
        
        <input type="submit" value="Add Price">
        
    </form>
    		<form action="ListVehiclePricesServlet">		
    		<input type="submit" value="list">
    		</form>
             <div class="arrow-container">
        <a href="Admindash.jsp" class="arrow-button">&#9654;</a>
    </div>
    
</body>
</html>