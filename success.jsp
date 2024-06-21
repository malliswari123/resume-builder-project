<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Template</title>
 
  <link rel="stylesheet" type="text/css" href="http://localhost:8080/Resume/css/success.css">
        
    
</head>
<body>
  <nav>


        <label class="logo">ResumeX</label>
      <hr>
    </nav> 
    
   
    <div class="container">
        <h1 style="color: white;">Select Template</h1> <!-- Set color for the heading -->
        <div class="template-row">
            <div>
                <img src="temp1.jpg" alt="Template 1" id="template1-img" class="template-image">
                <p style="color: white;">Template 1</p> <!-- Set color for template name -->
            </div>
            <div>
                <img src="temp2.jpg" alt="Template 2" id="template2-img" class="template-image">
                <p style="color: white;">Template 2</p> <!-- Set color for template name -->
            </div>
            <div>
                <img src="temp3.jpg" alt="Template 3" id="template3-img" class="template-image">
                <p style="color: white;">Template 3</p> <!-- Set color for template name -->
            </div>
            <div>
                <img src="temp5.jpg" alt="Template 4" id="template4-img" class="template-image">
                <p style="color: white;">Template 4</p> <!-- Set color for template name -->
            </div>
            <!-- Add more template images as needed -->
        </div>
        <label for="template" class="select-label"  style="color: white;">Select Template:</label>
        <select id="template" class="template-select">
            <option value="template1">Template 1</option>
            <option value="template2">Template 2</option>
            <option value="template3">Template 3</option>
            <option value="template4">Template 4</option>
            <!-- Add more template options if needed -->
        </select>
        <button class="next-button" onclick="selectTemplate()">Next</button>
    </div>

    <script>
        function selectTemplate() {
            var selectedTemplate = document.getElementById("template").value;
            // You can use selectedTemplate to pass the selected template to the next page.
            window.location.href = "NewFile.jsp?template=" + selectedTemplate;
        }
    </script>
</body>
</html>
