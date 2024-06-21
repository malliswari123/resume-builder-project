<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Input for Dynamic Resume</title>

<link rel="stylesheet" type="text/css" href="http://localhost:8080/Resume/css/NewFile.css">


</head>
<body> <nav>
        <input type="checkbox" id="check">
        <label for="check" class="checkbtn" >
    <i class="fa fa-bars"></i>
</label>

        <label class="logo">ResumeX</label>
       <ul>
           
            
            <li><a class="active" href="http://localhost:8080/Resume/success.jsp">Back</a></li>
        </ul><hr>
    </nav> 
   
<div class="container">
    <div id="inputFields">
        <h1>Enter Your Information</h1>
        <form id="userInputForm" action="NextFileServlet" method="post">
        
            <label for="name">Name:</label>
            <input type="text" id="name" name="name"   autocomplete="off"><br>
            <label for="contact">Contact:</label>
            <textarea id="contact" name="contact" rows="4" required  autocomplete="off"></textarea><br>
            <label for="about">About Me:</label>
            <textarea id="about" name="about" rows="2" required  autocomplete="off"></textarea><br>
            <label for="follow">Social Media Links:</label>
            <input type="text" id="follow" name="follow" required  autocomplete="off"><br>
            <label for="education">Education:</label>
            <textarea id="education" name="education" rows="2" required  autocomplete="off"></textarea><br>
            <label for="skills">Programming Skills:</label>
            <textarea id="skills" name="skills" rows="2" required  autocomplete="off"></textarea><br>
            <label for="interests">Projects:</label> <!-- Updated label for Projects -->
            <textarea id="interests" name="interests" rows="2" required  autocomplete="off"></textarea><br>
              <label for="certificate">Certificate :</label>
            <textarea id="certificate" name="certificate" rows="2" required  autocomplete="off"></textarea><br> <!-- Updated to display Projects -->
        </form>
    </div>
    <div id="resumeOutput">
        <!-- Generated resume will be displayed here -->
    </div>
</div>
  <button id="downloadButton">Download Resume</button>
<script>
//Function to generate the resume based on user input
function generateResume() {
    // Retrieve user input values
    var name = document.getElementById("name").value;
    var contact = document.getElementById("contact").value; // Updated to retrieve Contact instead of Job Title
    var about = document.getElementById("about").value;
    var follow = document.getElementById("follow").value;
    var education = document.getElementById("education").value;
    var skills = document.getElementById("skills").value;
    var interests = document.getElementById("interests").value;
    var certificate = document.getElementById("certificate").value;


    // Generate the resume HTML dynamically based on the selected template
    var resumeHTML = '';
    if (selectedTemplate === "template1") {
        resumeHTML = `
            <div class="resume">
                <div class="info">
                    <h1 style="text-align: center;">${name}</h1>
                    <pre><p>${contact}</p></pre>
                </div><hr>
                <div class="about">
                    ${about ? '<h1  >Profile</h1><p style="text-align: left;">' + about + '</p>' : ''}
                </div><hr>
                <div class="contact">
                    ${follow ? '<h1>Social Media Links</h1><p style="text-align: left;">' + follow + '</p>' : ''}
                </div><hr>
                <div class="education">
                    ${education ? '<h1>Education</h1><p style="text-align: left;">' + education + '</p>' : ''}
                </div><hr>
                <div class="skills">
                    ${skills ? '<h1>Skills</h1><p style="text-align: left;">' + skills + '</p>' : ''}
                </div><hr>
                <div class="interests">
                    ${interests ? '<h1>Projects</h1><p style="text-align: left;">' + interests + '</p>' : ''}
                </div>
                <hr>
                <div class="certificate">
                    ${certificate ? '<h1>certificate</h1><p style="text-align: left;">' + certificate + '</p>' : ''}
                </div>
            </div>
        `;
    } else if (selectedTemplate === "template2") {
    	 resumeHTML = `
             <div class="resume">
                 <div class="info">
                     <h1 style="text-align: center;">${name}</h1>
                     <pre><p>${contact}</p></pre>
                 </div><hr>
                 <div class="about">
                 ${about ? '<h1 style="text-decoration: underline; text-align: center  ;" >Profile</h1><p style="text-align: left;">' + about + '</p>' : ''}

                 </div><hr>
                 <div class="contact">
                     ${follow ? '<h1 style="text-decoration: underline; text-align: center  ;">Social Media Links</h1><p style="text-align: left;">' + follow + '</p>' : ''}
                 </div><hr>
                 <div class="education">
                     ${education ? '<h1 style="text-decoration: underline; text-align: center  ;">Education</h1><p style="text-align: left;">' + education + '</p>' : ''}
                 </div><hr>
                 <div class="skills">
                     ${skills ? '<h1 style="text-decoration: underline; text-align: center  ;">Skills</h1><p style="text-align: left;">' + skills + '</p>' : ''}
                 </div><hr>
                 <div class="interests">
                     ${interests ? '<h1 style="text-decoration: underline; text-align: center  ;">Projects</h1><p style="text-align: left;">' + interests + '</p>' : ''}
                 </div>
                 <hr>
                 <div class="certificate">
                     ${certificate ? '<h1 style="text-decoration: underline; text-align: center  ;">certificate</h1><p style="text-align: left;">' + certificate + '</p>' : ''}
                 </div>
             </div>
         `;
    }
    else if (selectedTemplate === "template3") {
    	resumeHTML = `
    	    <div class="resume">
    	        <div class="header">
    	            <h1>${name}</h1>
    	            <p>${contact}</p>
    	        </div><hr>
    	        <div class="content">
    	            <div class="section">
    	                ${about ? '<h2  style="text-decoration: underline;" ><u>Profile</u></h2><p>' + about + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${follow ? '<h2 style="text-decoration: underline;" ><u>Social Media Links</u></h2><p>' + follow + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${education ? '<h2 style="text-decoration: underline;" ><u>Education</u></h2><p>' + education + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${skills ? '<h2 style="text-decoration: underline;"><u>Skills</u></h2><p>' + skills + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${interests ? '<h2 style="text-decoration: underline;">Projects</h2><p>' + interests + '</p>' : ''}
    	            </div>
    	            <div class="section">
	                ${certificate ? '<h2 style="text-decoration: underline;">certificate</h2><p>' + certificate + '</p>' : ''}
	            </div>
    	        </div>
    	    </div>
    	`;

    }

    else if (selectedTemplate === "template4") {
    	resumeHTML = `
    	    <div class="resume">
    	        <div class="header">
    	            <h1 style="color:orange;">${name}</h1>
    	            <p>${contact}</p>
    	        </div><hr>
    	        <div class="content">
    	            <div class="section">
    	                ${about ? '<h2 style="color:orange;">Profile</h2><p>' + about + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${follow ? '<h2 style="color:orange;">Social Media Links</h2><p>' + follow + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${education ? '<h2 style="color:orange;">Education</h2><p>' + education + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	                ${skills ? '<h2 style="color:orange;">Skills</h2><p>' + skills + '</p>' : ''}
    	            </div>
    	            <div class="section">
    	            </div>
    	        </div>
    	    </div>
    	`;

    }


    // Append the generated resume to the resume div
    document.getElementById("resumeOutput").innerHTML = resumeHTML;
}

    // Function to add input fields based on the selected template
    function addInputFields(template) {
        var inputFields = document.getElementById("inputFields");
        if (template === "template1") {
            inputFields.innerHTML = `
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required><br>
                <label for="about">About Me:</label>
                <textarea id="about" name="about" rows="4" required></textarea><br>
                <label for="follow">Social Media Links:</label>
                <input type="text" id="follow" name="follow" required><br>
                <label for="education">Education:</label>
                <textarea id="education" name="education" rows="2" required></textarea><br>
                <label for="skills">Programming Skills:</label>
                <textarea id="skills" name="skills" rows="2" required></textarea><br>
                <label for="interests">Projects:</label>
                <textarea id="interests" name="interests" rows="2" required></textarea><br>
                <label for="certificate">Certificate :</label>
                <textarea id="certificate" name="certificate" rows="2" required></textarea><br>
            `;
        } else if (template === "template2") {
            inputFields.innerHTML = `
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required><br>
                <label for="about">About Me:</label>
                <textarea id="about" name="about" rows="4" required></textarea><br>
                <label for="follow">Social Media Links:</label>
                <input type="text" id="follow" name="follow" required><br>
                <label for="education">Education:</label>
                <textarea id="education" name="education" rows="2" required></textarea><br>
                <label for="skills">Programming Skills:</label>
                <textarea id="skills" name="skills" rows="2" required></textarea><br>
                <label for="interests">Projects:</label>
                <textarea id="interests" name="interests" rows="2" required></textarea><br>
                <label for="certificate">Certificate :</label>
                <textarea id="certificate" name="certificate" rows="2" required></textarea><br>
            `;
        }
        else if (template === "template3") {
            inputFields.innerHTML = `
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required><br>
                <label for="about">About Me:</label>
                <textarea id="about" name="about" rows="4" required></textarea><br>
                <label for="follow">Social Media Links:</label>
                <input type="text" id="follow" name="follow" required><br>
                <label for="education">Education:</label>
                <textarea id="education" name="education" rows="2" required></textarea><br>
                <label for="skills">Programming Skills:</label>
                <textarea id="skills" name="skills" rows="2" required></textarea><br>
                <label for="interests">Projects:</label>
                <textarea id="interests" name="interests" rows="2" required></textarea><br>
                <label for="certificate">Certificate :</label>
                <textarea id="certificate" name="certificate" rows="2" required></textarea><br>
            `;
        }
        else if (template === "template4") {
            inputFields.innerHTML = `
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required><br>
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" required><br>
                <label for="about">About Me:</label>
                <textarea id="about" name="about" rows="4" required></textarea><br>
                <label for="follow">Social Media Links:</label>
                <input type="text" id="follow" name="follow" required><br>
                <label for="education">Education:</label>
                <textarea id="education" name="education" rows="2" required></textarea><br>
                <label for="skills">Programming Skills:</label>
                <textarea id="skills" name="skills" rows="2" required></textarea><br>
                <label for="interests">Projects:</label>
                <textarea id="interests" name="interests" rows="2" required></textarea><br>
                <label for="certificate">Certificate :</label>
                <textarea id="certificate" name="certificate" rows="2" required></textarea><br>
            `;
        }

        // Add event listeners to input fields to trigger resume generation on input change
        document.querySelectorAll('#inputFields input, #inputFields textarea').forEach(function(input) {
            input.addEventListener('input', generateResume);
        });

        // Generate resume initially
        generateResume();
    }

    // Retrieve selected template from URL parameters
    var params = new URLSearchParams(window.location.search);
    var selectedTemplate = params.get('template');

    // Add input fields based on the selected template
    addInputFields(selectedTemplate);
    document.getElementById('downloadButton').addEventListener('click', function() {
        // Generate the resume
        generateResume();

        // Convert the resume to PDF and download
        var resume = document.querySelector('.resume');
        html2pdf().from(resume).save();
    });
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

</body>
</html>

