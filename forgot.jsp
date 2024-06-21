<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<html>
<head>
<title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/Resume/css/forgot.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>
    
 <div id="container">
        <form onsubmit="return validateForm()"  action="ForgotServlet"  method="post">
   

            <h2>Forgot Password</h2><br>
        
        <div class="form-group">
       <label >email:</label>
        <input type="text" id="email" name="email" class="form-control" autocomplete="off">
        <span id="emails" class="text-danger font-weight-bold"></span>
      </div><br>
            <button type="submit" name="Register" class="btn btn-primary" >submit</button><br>
           
        </form>
    </div> <%-- JavaScript block for displaying alert message --%>
    <% if (request.getAttribute("errorMessage") != null) { %>
        <script type="text/javascript">
            alert("Invalid email, Please try again. ");
        </script>
    <% } %>
     <script>
    function validateForm() {
        // Reset error messages
   document.getElementById("emails").innerHTML = "";       

       
   var email = document.getElementById("email").value;
      
       

   var emailPattern = /@gmail\.com$/;

   if (email === "") {
       document.getElementById("emails").innerHTML = "**Email is required.";
       return false;
   }

   if (!emailPattern.test(email)) {
   document.getElementById("emails").innerHTML = "Invalid email address. It should be in the format @gmail.com";
   return false;
}
       
    }
</script>

    
</body>
</html>