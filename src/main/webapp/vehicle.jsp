<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INSUURNCE</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: 'Roboto', sans-serif;
    background-color: #f5f5f5;
}
/* Style for the link */
.signup-image-link {
    display: inline-block;
    padding: 10px 20px;
    background-color: #0077b5;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-left: 28%;
    transition: background-color 0.3s;
}

.signup-image-link:hover {
    background-color: #005d8e;
}

/* Style for the container */
.iNSUURANS-container {
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 20px;
    margin: 10px;
}

h2 {
    color: #333;
    text-align: center;
}

/* Style for paragraphs within the forEach loop */
p {
    margin: 0;
    padding: 20px ;
    margin-left:20%;
}

/* Style for buttons */
input[type="button"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    padding: 10px;
    margin: 5PX;
    margin-left:300PX;
    cursor: pointer;
}

input[type="button"]:hover {
    background-color: #0056b3;
}

/* Center the buttons */
div.reservation-container > p {
    text-align: center;
}


</style>
</head>
<body>

    <div class="reservation-contain er">
        <h2>Insuurnce Details</h2>

         <c:forEach var="res" items="${resDetails}" >
        
          <c:set var="number" value="${res.number}"/>
          <c:set var="name" value="${res.name}"/>
          <c:set var="type" value="${res.type}"/>
          <c:set var="date" value="${res.date}"/>
          <c:set var="period" value="${res.period}"/>
          <c:set var="option" value="${res.option}"/>
             
            
             
             
             
              <p style="font-family: 'Roboto', sans-serif;">Vehicle NO			: ${res.number}</p> 
             <p style="font-family: 'Roboto', sans-serif;">Vehicle Name			: ${res.name}</p>
              <p style="font-family: 'Roboto', sans-serif;">Vehicle Type		: ${res.type}</p>
             <p style="font-family: 'Roboto', sans-serif;">Strat Date			: ${res.date}</p>
              <p style="font-family: 'Roboto', sans-serif;">End Period			: ${res.period}</p>
              <p style="font-family: 'Roboto', sans-serif;">Insuurance Option	: ${res.option}</p>
             
              <br>
              <br> 
              </c:forEach>
         
               <c:url value="updateinsuarance.jsp" var="profupdate">
           
                <c:param name="number" value="${number}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="type" value="${type}"/>
                 <c:param name="date" value="${date}"/>
                <c:param name="period" value="${period}"/>
                <c:param name="option" value="${option}"/>
                
           </c:url>
             <a href ="${profupdate}">
           <input type="button" name="update" value="Edit Insuurance" id="btn">
           
           
           
               <c:url value="deleteinsurance.jsp" var="profdelete">
           
                <c:param name="number" value="${number}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="type" value="${type}"/>
                 <c:param name="date" value="${date}"/>
                <c:param name="period" value="${period}"/>
                <c:param name="option" value="${option}"/>
                
           </c:url>
           
           
            <a href="${profdelete}">
            
             <input type="button" name="delete" value="Delete Details" id="btn">
             
            
            
            
        </p>
        
        <a href="insert.jsp" class="signup-image-link">Create an
							next insuurance</a>
    </div>

</body>
</html>