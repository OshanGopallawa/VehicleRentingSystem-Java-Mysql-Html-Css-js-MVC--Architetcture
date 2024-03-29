<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!--Scroll Header Js code-->
<script type="text/javascript">

    window.addEventListener('scroll', function () {
      let header = document.querySelector('header');
      let windowPosition = window.scrollY > 0;
    header.classList.toggle('scrollh', windowPosition);
    })

</script>
<script>
    var i=0;
    var images=[];
    var time=3000;

    images[0]='images/aa.jpg';
    images[1]='images/bb.jpg';
    images[2]='images/cc.jpg';
    images[3]='images/dd.jpg';
    images[4]='images/ee.jpg';
    
    function slideshow(){
      document.slide.src=images[i];

      if(i<images.length -1){
        i++;
      }
      else{
        i=0;
      }
      setTimeout("slideshow()",time);
    }
    window.onload=slideshow;
     
</script>

<!--Header-->
  <header>
    <div class="container">
      <nav>
        <div class="logo">
            <img src="images/logo.jpg" style="height:120px;">
        </div>
        
            <ul>
              <li>
                <b><a href="#">HOME</a></b>
              </li>
              <li>
                <b><a href="#">Vehicles</a></b>
              </li>
              <li>
                <b><a href="#">PACKGES</a></b>
              </li>
              <li>
                <b><a href="#">BLOGS & REVIEWS</a></b>
              </li>
              <li>
                <b><a href="#">CONTACT US</a></b>
              </li>
              <li>
                <b><a href="#">ABOUT US</a></b>
              </li>
              <div class="for">
              	
              <a href="hello.jsp"><button>Sign Up</button></a>
                <a href="login.jsp"><button>Login</button></a>
              			              	
				<% 
                   String username = (String) session.getAttribute("username");
                 %>
                  <h3>Welcome <%= username %></h3>
				<form action="homeservlet" method="post">
				<input type="hidden" name="username" value="<%= username %>">
				<input type="submit" value="<%= username %>" name="profile"  style="background-color: #ffbf00; border-radius: 50px;">
				</form>
				
              
				

	           
              	 
     	
              </div>
            </ul>
      </nav>
    
  </header>
  

    <!-- Background text -->  
    <div class="htxt">
      <h1>Discover the Freedom </h>
      <p>"Travel makes one modest. You see what a tiny place you occupy in the world." - Gustave Flaubert</p>
    </div>

     
    <img name="slide" width="100%">

      
    <!--grid and image box 1st 3 box -->
    <div class="www">
    <div class="des">
    <h2>Find Your Car</h2>
    <p>Find the trip that's right for you!</p>
    </div>

	  <main class="grid">
          <article>
            <img src="images/jeep1.jpg">
            <div class="text">
              <a href="#"><b>Car 1</b></a>
              <p>KX-0001.</p>
            </div>
          </article>
          <article>
            <img src="images/jeep2.jpg" alt="Sample photo">
            <div class="text">
              <a href="#"><b>Car 2</b></a>
              <p>CAA-0002</p>
            </div>
          </article>
          <article>
            <img src="images/jeep3.jpg" alt="Sample photo">
            <div class="text">
              <a href="#"><b>Car 3</b></a>
              <p>CBA-0003</p>
            </div>
          </article>

          <article>
            <img src="images/jeep4.jpg" alt="Sample photo">
            <div class="text">
              <a href="#"><b>Car 4</b></a>
              <p>CBG-0004</p>
            </div>
          </article>
          <article>
            <img src="images/jeep5.jpg" alt="Sample photo">
            <div class="text">
              <a href="#"><b>Car 5</b></a>
              <p>KY-0005</p>
            </div>
          </article>
          <article>
            <img src="images/jeep6.jpg" alt="Sample photo">
            <div class="text">
              <a href="#"><b>Car 6</b></a>
              <p>CAB-0006</p>
            </div>
          </article>
        </main>
        <div class="btx">
          <a href="Reservation.jsp"><button>Start Booking</button></a>
        </div>
        </div>




    <div class="i">
      <div class="content">
        <h1><b>Dream Car For rental</b></h1>
            <p>
              "Welcome to our vehicle renting platform, where we combine years of experience in the automotive industry with cutting-edge technology to provide you with an unmatched, hassle-free, and convenient way to access a diverse and well-maintained fleet of vehicles for all your transportation needs, whether it's for a spontaneous weekend getaway or a meticulously planned business trip
            </p>
                
            <p>
              "In an era where convenience and accessibility are paramount, we've meticulously curated a user-friendly online platform that seamlessly connects you with a wide range of vehicles, all designed to cater to different preferences, occasions, and budgets, ensuring that whether you're an adventurous solo traveler or a family in need of a spacious SUV, you'll find the perfect vehicle to embark on your next adventure."
            </p>
            <p>
              "At the core of our mission is a commitment to your safety and satisfaction, which is why we've implemented stringent quality control measures, comprehensive maintenance routines, and customer-centric policies, all aimed at providing you with peace of mind during your rental experience, knowing that you're in good hands."
            </p>
            <p>
              "We understand that renting a vehicle is more than just acquiring a means of transportation; it's about embracing a new city's culture, uncovering hidden gems, and creating lasting memories, and our dedicated team is here to assist you every step of the way, from booking to return, ensuring your journey is smooth and memorable."
            </p>
      </div>
    </div>  
    
   
	       <!--grid and image box 1st 3 box -->
    
      <!--Footer-->

      <footer class="footer-distributed">

		    <div class="footer-left">
		    	<div class="fn">
      			<p>Telephone | +94 11 2199323:</p>
			   		<p>Email	 | info@RentCar.com</p>
			   		<p>Address   | 2835 31st Ave W. Seattle, WA - USA 98199</p>
			   		<p>Copyright © 2023 Vehicle Experts. |  Rent Car Co. .All Rights Reserved.</p>
				</div>
	        </div>
	        <div class="footer-center"></div>
			<div class="footer-right">
				<p class="footer-about">
					<span style="font-size: 16px;font-weight: bold;">About RentCar</span>
					<span>RentCar i Co. & Expeditions travel experts have been customizing Vehicles for groups, families, friends and honeymooners for over 20 years.</span>
				</p>
				
			</div>
	  </footer>
	  <!--Close Footer-->
</body>
</html>

