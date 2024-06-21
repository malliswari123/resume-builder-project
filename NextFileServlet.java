

package com.simple.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simple.beans.NextFilebean;
import com.simple.demo.NextFileDb;





@WebServlet("/NetFileServlet")
public class  NextFileServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward GET requests to the registration form page

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

       
        String name = request.getParameter("name");
        String contact = request.getParameter("contact");
        String about = request.getParameter("about");
        String follow = request.getParameter("follow");
        String education = request.getParameter("education");
        String skills = request.getParameter("skills");
        String interests = request.getParameter("interests");
        String certificate = request.getParameter("certificate");
   NextFilebean sb=new NextFilebean();
  
   sb.setName(name);
   sb.setContact(contact);
   sb.setAbout(about);
   sb.setFollow(follow);
   sb.setEducation(education);
   sb.setSkills(skills);
   sb.setInterests(interests);
   sb.setCertificate(certificate);
   NextFileDb sd=new NextFileDb();

   String registrationResult = sd.insertUser(sb);


   if (registrationResult.equals("User registered successfully")) {
  
       response.sendRedirect("thank.jsp");
   }  else {
       // If registration fails for any other reason, display an error message
       response.getWriter().println("Failed to register user: " + registrationResult);
   }
}
}

