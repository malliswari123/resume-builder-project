


package com.simple.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simple.beans.updatebean;

import com.simple.demo.updateDb;



@WebServlet("/UpdateServlet")
public class  UpdateServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward GET requests to the registration form page

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

       
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String newpassword = request.getParameter("newpassword");
        
   updatebean sb=new updatebean();
  
   sb.setEmail(email);
   sb.setPassword(password);
   sb.setNewpassword(newpassword);
   
   updateDb sd=new updateDb();

   String registrationResult = sd.UserPassword(sb);


   if (registrationResult.equals( "Password updated successfully")) {
  
       response.sendRedirect("login.jsp");
   } 
    else {
       // If registration fails for any other reason, display an error message
       response.getWriter().println("Failed to register user: " + registrationResult);
   }
}
}
