<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: rgb(192, 192, 192);
    text-align: center;
}

/* Style for the h1 heading */
h1 {
    color: #333;
}

/* Style for the form container */
.form {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 50px;
    margin: 20px auto;
    width: 300px;
    text-align: left;
}

/* Style for labels */
label {
    font-weight: bold;
    display: block;
    margin-top: 10px;
    text-align: 75px;
}

/* Style for input fields and select */
input[type="text"],
input[type="date"],
select {
    width:  50%;
    padding: 5px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style for the submit button */
input[type="submit"] {
    background-color: rgb(0, 128, 255);
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Style for the arrow button */
.arrow-container {
    text-align: center;
    margin-top: 10px;
}

.arrow-button {
    text-decoration: none;
    font-size: 20px;
    color: rgb(255, 255, 255);
}



</style>

</head>
<body>


 <h1>VEHICLE DETAILS</h1><br>
	 
    <form action="InsertServlet" method="post">
        
        <!-- Name -->
        <label for="name">Vehicle Number:</label>
        <input type="text" id="number" name="number" required><br><br>
        
        <!-- Vehicle Number -->
        <label for="vehicleNumber">Vehicle Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        

        <!-- Type -->
        <label for="type">Vehicle Type:</label>
       <input type="text" id="type" name="type" required><br><br>
            

        <!-- Date -->
        <label for="date">Strat Date:</label>
        <input type="date" id="date" name="date" required><br><br>

        <!-- Period -->
        <label for="period">Period:</label>
        <input type="text" id="period" name="period" required><br><br>

        <!-- Options -->
        <label for="options">Insurance Options:</label>
        <select id="option" name="option">
            <option value="Full Option">Full Option </option>
            <option value="Collision Insurance">Collision Insurance</option>
            <option value="Liability Insurance">Liability Insurance</option>
            <option value="3rd Party">3rd Party</option>
            
        </select><br><br>

        <!-- Submit Button -->
        <input type="submit" value="Submit">
    </form>
    


</body>
</html>