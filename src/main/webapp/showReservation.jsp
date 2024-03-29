<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	  <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <style>
          body {
            font-family: Arial, sans-serif;
            background-image: url('images/shehani.jpg'); 
            background-size: cover;
            background-color: rgba(255, 255, 255, 0.7); /* Adjust the transparency */
            background-blur: 10px; /* Adjust the blur effect */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #333; /* Smooth font color */
        }

        .reservation-container {
            background-color: rgba(255, 255, 255, 0.9); /* Adjust the transparency */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
        }

        p {
            margin: 10px 0;
            color: #555;
        }

        a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s; /* Smooth color transition on hover */
        }

        a:hover {
            color: #0056b3; /* Darker color on hover */
        }
        
        
         .btn-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #0056b3;
        }
        
        #btn {
  background-color: rgb(213, 43, 47);
  color: white; 
  border: none; 
  padding: 10px 20px; 
  cursor: pointer; 
}

#btn:hover {
  background-color: rgb(255, 0, 0);
}
/login form css/

.form{
    font-family: "Roboto", sans-serif;
    position: relative;
    z-index: 1;
    background: #f1e8e8;
    opacity: 85%;
    max-width: 260px;
    margin: 200px auto 100px;
    padding: 10px 45px 30px 45px;
    text-align: center;
    box-shadow: 0 0 20px 0 rgba(255, 5, 10, 0.2), 0 5px 5px 0 rgba(255, 5, 10, 0.24);
    border-radius: 10px;
}

.form p{
    font-size: 15px;
    padding: 1px;
    text-align: center;
}

.form input{
    outline: 0;
    border-radius: 10px;
    background: #F2F2F2;
    width: 100%;
    border: 0;
    margin: 0 0 15px;
    padding: 15px;
    box-sizing: border-box;
    font-size: 14px;
}
.form input:hover{
    background-color:  #ccccb3;
    transition: all 1s ease 0s;
}
.form input:focus{
    background-color: #e0e0d1;
    transition: all 1s ease 0s;
}
.form button{
    text-transform: uppercase;
    outline: 0;
    border-radius: 10px;
    background: #ffbf00;
    width: 100%;
    border: 0;
    padding: 15px;
    color: #FFFFFF;
    font-size: 14px;
    cursor: pointer;
}
.form button:hover, .form button:active, .form button:focus{
    background-color: #ffad33;
    transition: all 1s ease 0s;
}
.form .button{
    margin: 15px 0 0;
    color: #fff;
    font-size: 12px;
}
.form .message{
    margin: 15px 0 0;
    color: #B3B3B3;
    font-size: 12px;
}
.form .message a{
    color: #06C5CF;
    text-decoration: none;
}
  .form-box{
      position: relative;
      width:430px;
      height:490px;
      background:transparent;
      border:2px solid rgb(255, 255, 255,0.5);
      border-radius:20px;
      backdrop-filter:blur(2px);
      display:flex;
      justify-content: center;
      align-items: center;
      

    }
    </style>
</head>
<body background="reservation.jpg">
    <div class="reservation-contain er">
   
        <h2 style="color: white;">Reservation Details</h2>
           <c:forEach var="res" items="${resDetails}" >
         
          <c:set var="carno" value="${res.carno}"/>
          <c:set var="name" value="${res.name}"/>
          <c:set var="nic" value="${res.nic}"/>
          <c:set var="address" value="${res.address}"/>
          <c:set var="reserveDate" value="${res.reserveDate}"/>
          <c:set var="email" value="${res.email}"/>
         
            
             <h3 style="font-family: 'Roboto', sans-serif;color: white;">  Your car will ready: pickup it in  ${res.reserveDate} </h3>
             
             
              <p style="font-family: 'Roboto', sans-serif;color: white;">  Car no: ${res.carno}</p> 
             <p style="font-family: 'Roboto', sans-serif;color: white;">  Username: ${res.name}</p>
              <p style="font-family: 'Roboto', sans-serif;color: white;">  NIC: ${res.nic}</p>
             <p style="font-family: 'Roboto', sans-serif;color: white;">  Address: ${res.address}</p>
              <p style="font-family: 'Roboto', sans-serif;color: white;">  ReserveDate: ${res.reserveDate}</p>
              <p style="font-family: 'Roboto', sans-serif;color: white;">  Email: ${res.email}</p>
             
              <br>
              <br> 
              </c:forEach>
             
         
               <c:url value="updateReservation.jsp" var="profupdate">
           
                <c:param name="carno" value="${carno}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="nic" value="${nic}"/>
                 <c:param name="address" value="${address}"/>
                <c:param name="reserveDate" value="${reserveDate}"/>
                <c:param name="email" value="${email}"/>
                
           </c:url>
             <a href ="${profupdate}">
           <input type="button" name="update" value="Edit Reservation" id="btn">
           
           
           
               <c:url value="deleteReservation.jsp" var="profdelete">
           
                <c:param name="carno" value="${carno}"/>
                <c:param name="name" value="${name}"/>
                <c:param name="nic" value="${nic}"/>
                 <c:param name="address" value="${address}"/>
                <c:param name="reserveDate" value="${reserveDate}"/>
                <c:param name="email" value="${email}"/>
                
           </c:url>
         
           
            <a href="${profdelete}">
            
             <input type="button" name="delete" value="Delete Reservation" id="btn">
            <input type ="buton" name="payment"  value="Add payment details" id ="btn">
            
             
            <a href="insertcarddetails.jsp">Add card details</a>
        </p>
       
        </a>
    </div>
      
</body>
</html>