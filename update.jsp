<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>
<head>
<title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="forgot.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>
     
 <div id="container">
        <form onsubmit="return validateForm()" action="UpdateServlet"  method="post">


            <h2>Update password</h2><br>
             <div class="form-group">
       <label >email:</label>
        <input type="text" id="email" name="email" class="form-control" autocomplete="off">
        <span id="emails" class="text-danger font-weight-bold"></span>
      </div>
        
            <div class="form-group">
                <label  for="password"> new password:</label>
                 <input type="password" id="password" name="password" class="form-control" autocomplete="off">
                 <span id="passwords" class="text-danger font-weight-bold"></span>
            </div>
    
                <div class="form-group">
       <label  for="newpassword"> confirm password:</label>
        <input type="newpassword" id="newpassword" name="newpassword" class="form-control" autocomplete="off">
        <span id="newpasswords" class="text-danger font-weight-bold"></span>
      </div>
            <button type="submit" name="Register" class="btn btn-primary">Change password</button><br><br>
           
        </form>
    </div>
     <script>
    function validateForm() {
    
    	   document.getElementById("emails").innerHTML = "";       
        document.getElementById("passwords").innerHTML = "";
        document.getElementById("newpasswords").innerHTML = "";
       
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var cpassword = document.getElementById("newpassword").value;


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
        if (newpassword === "") {
            document.getElementById("newpasswords").innerHTML = "**Password is required.";
            return false;
        }
         
        if (password !=cpassword) {
            document.getElementById("passwords").innerHTML = "**Password are not matching.";
            return false;
        }
       
    }
</script>

    
</body>
</html>