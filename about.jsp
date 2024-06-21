<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Responsive navbar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/about.css">

  
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
            <li><a class="active" href="about.jsp">About</a></li>
            <li><a href="service.jsp">Service</a></li>
            <li><a href="home.jsp">Back</a></li>
        </ul>
        <hr>
    </nav> 
    <div class="wrapper">
        <header>
            <h1 Style="color:whitesmoke">About Our Resume Builder</h1>
        </header><br><br>
        <section class="column">
            <div class="box">
              <h2>Resume Builder</h2><br>
<p>In today's competitive job market, having a strong resume is crucial. Our website is here to streamline the process, making it easier for you to create professional resumes that stand out to employers.</p>    </div>
            <div class="box">
               <h2>Effortless and Intuitive</h2><br>
<p>Our platform offers user-friendly services, guiding you through each step with simplicity and clarity. Simply sign up with your basic information, and begin crafting your resume effortlessly.</p></div>
            <div class="box">
              <h2>Customizable Templates</h2><br>
<p>We provide a range of customizable templates to suit your style and profession. Whether you're in finance, healthcare, or creative industries, our templates cater to diverse needs and preferences.</p> </div>
        
        </section>
    </div>

</body>
</html>