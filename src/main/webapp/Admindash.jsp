<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin- Online Vehicle Rental System</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="index-styles.css" rel="stylesheet" />
    
    <style>
        /* Header Styles */
        .header {
            background-color: gray;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        /* Navigation Bar Styles */
        .navbar {
            background-color: #blue;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color:grey;
            transition: 3s;
        }

        /* Body Styles */
        .content {
            padding: 20px;
            color:#fff;
            font-size:30px;
       }
      .footer {
        background-color: #444;
        color: white;
        text-align: center;
        padding: 10px 0;
    }

    /* Adjust footer font size and style as needed */
    .footer p {
        font-size: 14px;
        font-style: italic;
    }
         body {
   
    background-size: cover;
    background-repeat: no-repeat;
  }
    </style>
</head>
<body>




    <!-- Masthead-->
	<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/avataaars.svg"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Admin Dashboard</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0" style="color: black;">VEHICLE RENTAL SYSTEM</p>
		</div>
	</header>
	
	
    <!-- Header -->
    

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="#" style="color: black;">Home</a>
        <a href="<%= request.getContextPath() %>/makevehiclepricelist.jsp" style="color: black;">Add vehicle Price List </a>
        <form action="ListVehiclePricesServlet">		
    		<input type="submit" value="list">
    		</form>
    </div>

    <!-- Body Content -->
    <div class="content">
        <h4 style="color: black;">Welcome to the Admin Dashboard !!!</h4>
        <p style="color: black;font-family: 'Montserrat', sans-serif;">Welcome to the Admin Dashboard of our Online Vehicle Rental System. As a admin, this is your central hub for overseeing and controlling various aspects of the vehicle booking process. From here, you can manage manage vehicles in the system and  ensure the smooth operation of rental reservations. Use the navigation links above to access different sections and perform your Administrator duties efficiently.</p>
    </div>
    <div>
    <img src="images/adminba1.jpg" width="400" height="200">
   <right>
    <img src="images/adminba2.jpg" width="400" height="200">
    <img src="images/adminba3.jpg" width="400" height="200">
    
    </right></div>

    

    
    
     <footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						2215 John Daniel Drive <br /> Clark, MO 65243
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About Freelancer</h4>
					<p class="lead mb-0">
						Freelance is a free to use, MIT licensed Bootstrap theme created
						by <a href="http://startbootstrap.com">Start Bootstrap</a> .
					</p>
				</div>
			</div>
		</div>
	</footer>
    </body>
    </html>