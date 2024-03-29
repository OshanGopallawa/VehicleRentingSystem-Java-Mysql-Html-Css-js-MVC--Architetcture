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
    background-color: rgb(198, 0, 0);
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: rgb(255, 0, 0);
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

<%
    String number = request.getParameter("number");
    String name = request.getParameter("name");
    String type = request.getParameter("type");
    String date = request.getParameter("date");
    String period = request.getParameter("period");
    String option = request.getParameter("option");
 %>
<div class="form">
    <p>Delete Insuurance</p>
    <form action="deleteinsuarance" method="post">
        <input type="text" name="number" placeholder="Insurance Number" value="<%=number%>" readonly>
        <input type="text" name="name" placeholder="Name" value="<%=name%>" readonly>
        <input type="text" name="type" placeholder="Type" value="<%=type%>" readonly>
        <input type="text" name="date" placeholder="Date" value="<%=date%>" readonly>
        
        <input type="text" name="period" placeholder="Period" value="<%=period%>" readonly>
        <input type="text" name="option" placeholder="Option" value="<%=option%>" readonly>
        <input type="submit" value="Delete Insurance" id="btn">
    </form>
</div>


</body>
</html>