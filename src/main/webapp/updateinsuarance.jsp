<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insuurance</title>

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
}

/* Style for input fields and select */
input[type="text"],
input[type="date"],
select {
    width:  90%;
    padding: 5px;
    margin-top: 5px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style for the submit button */
input[type="submit"] {
    background-color: rgb(255, 0, 0);
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

<h1>INSUURANCE DETAILS UPDATE</h1><br>
	 
  
     <%
        String number=request.getParameter("number");
     	String name = request.getParameter("name");
     	String type = request.getParameter("type");
     	String date = request.getParameter("date");
        String period=request.getParameter("period");
        String option=request.getParameter("option");
     %>
     
     
    <div class="form">
    <p>Update Insuurance</p>
    <form action="updateinsuarance" method="post" onsubmit="return validateForm()">
    <label for="options">Vehicle Number:</label>
    	 <input type="text" name="number" placeholder="number" value="<%=number%>" readonly>
    	 
    	 <label for="options">Vehicle Name:</label>
    	  <input type="text" name="name" placeholder="name" value="<%=name%>">
    	  
    	  <label for="options">Vehicle Type:</label>
    	   <input type="text" name="type" placeholder=type value="<%=type%>">
    	   
    	   <label for="options">Vehicle Date:</label>
        <input type="date" name="date" placeholder="date" value="<%=date%>">
        
        <label for="options">End Period:</label>
        <input type="text" name="period" placeholder="period" value="<%=period%>" >
        
        <label for="options">Insurance Options:</label>
        <select id="option" name="option" <%=option %>>
            <option value="Full Option">Full Option </option>
            <option value="Collision Insurance">Collision Insurance</option>
            <option value="Liability Insurance">Liability Insurance</option>
            <option value="3rd Party">3rd Party</option>
        
        <input type="submit" value="Update" id="btn">
     
    </form>
     <div class="arrow-container">
        <a href="updateinsurance.jsp" class="arrow-button">&#9654;</a>
    </div>
    </div>
    


</body>
</html>