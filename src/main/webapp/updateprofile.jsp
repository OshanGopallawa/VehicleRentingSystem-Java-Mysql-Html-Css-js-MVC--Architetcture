<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="update.css">
<title>Insert title here</title>
</head>
<body>

     <%
        String username=request.getParameter("userr");
        String email=request.getParameter("em");
        String pws=request.getParameter("pws");
     %>
     
     
    <div class="form">
    <p>Update Profile</p>
    <form action="updateservlet" method="post" onsubmit="return validateForm()">
        <input type="text" name="username" placeholder="username" value="<%=username%>"readonly>
        <input type="Email" name="email" placeholder="email" value="<%=email%>" >
        <input type="password" id="password" placeholder="enter password" value="<%=pws%>">
        <input type="password" id="confirmpassword" name="confirm" placeholder="confirm password">
        <input type="submit" value="Update" id="btn">
     
    </form>
    <script>
    <script>
    function validateForm() 
    {
      var password = document.getElementById("password").value;
      var confirmPassword = document.getElementById("confirmPassword").value;

      if (password !== confirmPassword) 
      {
        alert("Passwords do not match");
        return false;
      }
      else
      {
        alert("Update succesfull");
        return true;
      }
    }
    </script>
    </div>
    
</body>
</html>