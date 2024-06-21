<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/Resume/css/login.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body style="background-image: url('4.jpg');">
     <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn" >
    <i class="fa fa-bars"></i>
</label>
        <label class="logo">ResumeX</label>
        <ul>
            <li><a  href="home.jsp">Home</a></li>
            <li><a class="active" href="login.jsp">Login</a></li>
            <li><a href="signup.jsp">SIGNUP</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="home.jsp">Back</a></li>
        </ul><hr>
    </nav>
 
 <div id="container">
        <form onsubmit="return validateForm()"  action="LoginServlet" method="post">
   

            <h2>LOGIN</h2>
            
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
            <button type="submit" name="Register" class="btn btn-primary">login</button><br><br>
            <a href="forgot.jsp" style="float: left;" >forgot password ?</a><br><br>
         <b style="float: left;">don't have an account:</b><a href="signup.jsp" style="float: left;">&nbsp;&nbsp;&nbsp;&nbsp;SIGNUP</a><br>
        </form>
    </div>
      <%-- JavaScript block for displaying alert message --%>
    <% if (request.getAttribute("errorMessage") != null) { %>
        <script type="text/javascript">
            alert("Invalid username or password. Please try again. ");
        </script>
    <% } %>
     <script>
    function validateForm() {
       
        document.getElementById("emails").innerHTML = "";

        document.getElementById("passwords").innerHTML = "";
       

       
        var email = document.getElementById("email").value;
      
        var password = document.getElementById("password").value;
       

        var emailPattern = /@gmail\.com$/;

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

       
    }
</script>

    
</body>
</html>