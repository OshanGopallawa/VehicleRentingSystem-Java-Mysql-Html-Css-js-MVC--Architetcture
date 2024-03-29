<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="profile.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
	   <div class="form">
        
        <c:forEach var="user" items="${Userdetails}" >
        
          <c:set var="userr" value="${user.username}"/>
          <c:set var="em" value="${user.email}"/>
          <c:set var="pws" value="${user.password}"/>
             
            
             <h3 style="font-family: 'Roboto', sans-serif;">Hello  ${user.username} </h3>
                
             <p style="font-family: 'Roboto', sans-serif;"> Username: ${user.username}</p>
              <p style="font-family: 'Roboto', sans-serif;"> Email: ${user.email}</p>
             <p style="font-family: 'Roboto', sans-serif;"> Password: ${user.password}</p>
              <br>
              <br> 
              </c:forEach>
            
           <c:url value="updateprofile.jsp" var="profupdate">
           
                <c:param name="userr" value="${userr}"/>
                <c:param name="em" value="${em}"/>
                <c:param name="pws" value="${pws}"/>
                
           </c:url>
           <a href ="${profupdate}">
           <input type="button" name="Update" value="Edit Profile" id="btn">
            </a>
            <br>
           
            
             <c:url value="delete.jsp" var="profdelete">
             
                 <c:param name="userr" value="${userr}"/>
                <c:param name="em" value="${em}"/>
                <c:param name="pws" value="${pws}"/>
                
             </c:url>
            <a href="${profdelete}">
             <input type="button" name="delete" value="Delete Profile" id="btn">
	         </a>
	        
	         <a href="home.jsp">
             <input type="button" name="home" value="Home" id="btn">
	         </a>
	        </div> 
</body>
</html>