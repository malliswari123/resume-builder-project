<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
    <title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/Resume/css/signup3.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>

<body style="background-image: url('6.jpg');">
<nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn" >
    <i class="fa fa-bars"></i>
</label>

        <label class="logo">ResumeX</label>
        <ul>
            <li><a  href="home.jsp">Home</a></li>
            <li><a  href="login.jsp">Login</a></li>
            <li><a  class="active" href="#">SIGNUP</a></li>
            <li><a href="service.jsp">Service</a></li>
            <li><a href="home.jsp">Back</a></li>
        </ul>
        <hr>
    </nav> 
    
    <div class="container">
    
    <div > 
    
   
    <form onsubmit="return validateForm()"  action="SignupServlet" method="post">
  

      <h1 >SIGN UP</h1>
      <div class="form-group">
       <label >Username:</label>
        <input type="text" id="username" name="username" class="form-control" autocomplete="off">
        <span id="user" class="text-danger font-weight-bold"></span>
      </div>

     
    
    
     <div class="form-group">
       <label >email:</label>
        <input type="text" id="email" name="email" class="form-control" autocomplete="off">
        <span id="emails" class="text-danger font-weight-bold"></span>
      </div>
      
      
     <div class="form-group">
       <label  for="password">password:</label>
        <input type="password" id="password" name="password" class="form-control" autocomplete="off">
        <span id="passwords" class="text-danger font-weight-bold"></span>
      </div>
      
      
     <div class="form-group">
       <label >phone_no:</label>
        <input type="text" id="phone" name="phone" class="form-control" autocomplete="off">
        <span id="phones" class="text-danger font-weight-bold"></span>
      </div>
      <br>
          <button type="submit" name="Register" class="btn btn-primary">Register</button><br><br>     
         <b> if you have an account:</b> <a href="login.jsp">&nbsp;&nbsp;&nbsp;LOGIN</a>
        </form>
      </div>
    </div>
    
     
<%-- JavaScript block for displaying alert message --%>
<% if (request.getAttribute("errorMessage") != null) { %>
    <script type="text/javascript">
        alert("Username already exists. Please choose a different username.");
    </script>
<% } %>
    
     <script>
    function validateForm() {
       
        document.getElementById("user").innerHTML = "";

        document.getElementById("emails").innerHTML = "";
        document.getElementById("passwords").innerHTML = "";
        document.getElementById("phones").innerHTML = "";

        var username = document.getElementById("username").value;
   
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var phone_no = document.getElementById("phone").value;

        var emailPattern = /@gmail\.com$/;


        if (username === "") {
            document.getElementById("user").innerHTML = "**Username is required.";
            return false;
        }

        if ((username.length <= 2) || (username.length > 20)) {
            document.getElementById("user").innerHTML = "**Length must be between 2 & 20";
            return false;
        }

        if (!isNaN(username)) {
            document.getElementById("user").innerHTML = "**Only characters allowed";
            return false;
        }

   

        if (email === "") {
            document.getElementById("emails").innerHTML = "**Email is required.";
            return false;
        }

        if (!emailPattern.test(email)) {
        document.getElementById("emails").innerHTML = "Invalid email address. It should be in the format @gmail.com";
        return false;
    }

        if (password === "") {
            document.getElementById("passwords").innerHTML = "**Password is required.";
            return false;
        }

        if ((password.length <= 4) || (password.length > 20)) {
            document.getElementById("passwords").innerHTML = "**Length must be between 4 & 20";
            return false;
        }

        if (phone_no === "") {
            document.getElementById("phones").innerHTML = "**Phone number is required.";
            return false;
        }

        if (isNaN(phone_no)) {
            document.getElementById("phones").innerHTML = "**Only digits allowed";
            return false;
        }

        if (phone_no.length != 10) {
            document.getElementById("phones").innerHTML = "**Number must be 10 digits";
            return false;
        }
    }
</script>

    
    
    
    
</body>

</html>
