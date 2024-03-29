<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
		   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
			

 <style>
  

   body {
            background-image: url('images/adminlogin.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }

    section{
      display:flex;
      justify-content:center;
      align-items:110vh;
      width:100%;
      margin-top: 160px;
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

   
    h2{
      font-size: 2em;
      color:rgb(255, 255, 255);
      text-align: center;
    }
    
    .inputbox{
      position: absolute;
      margin:30px 0;
      width: 310px;
      border-bottom: 2px solid white;
    }

    .inputbox label{
      position: absolute;
      top:50%;
      left:5px;
      transform: translateY(-50%);
      color:aliceblue;
      font-size: 1em;
      pointer-events:none;
      transition:.5s;
    }

    input:focus~label,
    input:valid~label{
      top:-5px;
    }

    .inputbox input{
      margin-top: 5px;
      width:260px;
      height:30px;
      background: transparent;
      border:none;
      font-size: 1em;
      padding: 0 35px 0 15px ; 
      color:#fff;
    }

    
    .forget{
      margin:-15px 0 15px;
      font-size: 16px;
      color:black;
      justify-content: center;
    }

    .forget label input{
      margin-right: 3px;
    }

    .forget{
      margin-top: 50px;
    }

    .new{
      margin-top: 10px;
    }

    .forget label a{
      color:#fff;
      text-decoration:none;
    }

    .forget label a:hover{
      text-decoration: underline;
    }

    button{
      width:100%;
      height:40px;
      border-radius: 40px;
      background: white;
      border:none;
      outline:none;
      cursor:pointer;
      font-size: 1em;
      font-weight: 600;
    }

    button:hover{
      background-color:navy;
      color:white;
    }

    .register{
      font-size: .9em;
      color:#fff;
      text-align: center;
      margin:25px 0 10px;
    }

    .register p a{
      text-decoration: none;
      color:white;
      font-weight:600;
    }

    .register p a:hover{
      text-decoration: underline
    }
    
    .staff{
      font-size:20px;

    }

    .staff:hover{
      color:red;
    }

    .reset{
      
      background-color:white;
      color:black;
    }

    .rest:hover{
      background-color:blue;
      color:white;
    }
     #btn {
	  background-color: rgb(213, 43, 47);
	  color: white; /* Set text color to white for better contrast */
	  border: none; /* Remove the default button border */
	  padding: 10px 20px; /* Add some padding for better appearance */
	  cursor: pointer; /* Change cursor on hover to indicate interactivity */
	  border-radius:50px;
	  height:50px;
	}
	
	#btn:hover {
	  background-color: rgb(255, 0, 0); /* Change color when hovered over */
	}



    </style>
    
</head>
 <body> 
 
  <section>
    <div class="form-box">
      <div class="form-value">
        <form action="AdminloginServlet" method="post">
        <br>
          <h2>AdminLogin</h2>
          <div class="inputbox">
            <icon-icon name="mail-outline"></icon-icon>
	
	<label style="color: white;">Adminname</label>  </br><br>
	<input type="text" name ="aname">
	<br>
	  </div>
          <br>
          <br>
          <br>
          <div class="inputbox">
            <icon-icon name="lock-closed-outline"></icon-icon>
	<label style="color: white;">Password</label>  </br><br>
	<input type="password" name="pass">
	 </div>
          <br>
          <br>
          <br>
     
	
	  
	 <div class="forget">
          <input type="checkbox" name="remember_me"><p style="color: white;"> Remember me</p>

          
            <br>
            <label for="" style="color: white;"> Do you want to reset password? </label>
          <a href="forgotpassword.jsp" style="color: white;">  Reset Your Password </button> 
          </div>
          
          
          <div class="new">
        <input type="submit" name ="submit" value="login" id="btn">
           

                
               <div class="register">
            <p style="color: white;">Don't have an account, Sign up here <a href="hello.jsp"><b style="color: white;"> Register </b></a></p>

          </div>
         
          </div>
	
	</form>
	 
      </div>
    </div>
  </section>

</body>
</html>