<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/service.css">

  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn" >
    <i class="fa fa-bars"></i>
</label>

        <label class="logo">ResumeX</label>
        <ul>
            <li><a  href="home.jsp">Home</a></li>
            <li><a  href="login.jsp">Login</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a class="active" href="service.jsp">Service</a></li>
            <li><a href="home.jsp">Logout</a></li>
        </ul>
        <hr>
    </nav> 
    <div class="wrapper">
        <header>
            <marquee Style="color:white ; font-size:30px;">About Our Service</marquee>
        </header><br><br>
        <section class="column">
            <div class="box">
               <h2>Start Building Your Future</h2><br>
<p>Begin your journey towards a successful career with our resume builder. Sign up today and let us help you create a compelling resume that gets noticed by employers.</p></div>
            <div class="box">
               <h2>Expert Guidance</h2><br>
<p>Receive expert advice and tips on resume writing. Our platform offers valuable insights to help you highlight your strengths, skills, and achievements effectively.</p>     </div>
            <div class="box">
                <h2>Contact Us</h2>
                <p>If you any queries and issues kindly mail us at  <a href="#">resumex@gmail.com</a>.</p>
            </div>
        </section>
    </div>

</body>
</html>