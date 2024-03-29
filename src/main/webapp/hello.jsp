<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="signup.css">
</head>
<body>
<div class="form">
    <p>Sign Up</p>
    <form id="signupForm" action="testservlet" method="post" onsubmit="return validateForm()">
        <input type="text" name="username" placeholder="username">
        <input type="Email" name="email" placeholder="email">
        <input type="password" id="password" placeholder="enter password">
        <input type="password" id="confirmpassword" name="confirm" placeholder="confirm password">
        <input type="submit" value="Signup" id="btn">
        <p class="message">Registered? <a href="login.jsp">Login</a></p>
    </form>
</div>
<script>
    function validateForm() {
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmpassword").value; // Use the correct ID here

        if (password !== confirmPassword) {
            alert("Passwords do not match");
            return false;
        } else {
        	 document.getElementById("signupForm").submit();
            alert("Signup successful"); // Corrected the spelling of "successful"
            return true;
        }
    }
</script>
</body>
</html>
