

package com.simple.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simple.beans.signupbean;
import com.simple.demo.SignupDb;



@WebServlet("/SignupServlet")
public class  SignupServlet  extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward GET requests to the registration form page

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

       
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        
   signupbean sb=new signupbean();
  
   sb.setUsername(username);
   sb.setEmail(email);
   sb.setPassword(password);
   sb.setPhone(phone);
   
   SignupDb sd=new SignupDb();

   String registrationResult = sd.insertUser(sb);


   if (registrationResult.equals("User registered successfully")) {
  
       response.sendRedirect("login.jsp");
   } else if (registrationResult.equals("User with this username already exists")) {

       String errorMessage = "Username already exists. Please choose a different username.";
       request.setAttribute("errorMessage", errorMessage);
       request.getRequestDispatcher("index.jsp").forward(request, response);
   } else {
       // If registration fails for any other reason, display an error message
       response.getWriter().println("Failed to register user: " + registrationResult);
   }
}
}
