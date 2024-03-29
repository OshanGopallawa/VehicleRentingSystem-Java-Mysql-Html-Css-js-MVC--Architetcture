<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="delete.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%
        String username=request.getParameter("userr");
        String email=request.getParameter("em");
        String pws=request.getParameter("pws");
     %>
     
       
    <div class="form">
    <p>Delete profile</p>
    <form action="deleteservlet" method="post" >
        <input type="text" name="username" placeholder="username" value="<%=username%>"readonly>
        <input type="Email" name="email" placeholder="email" value="<%=email%>" readonly>
        <input type="submit" value="Delete Account" id="btn">
     
    </form>
   
    
    </div>

</body>
</html>