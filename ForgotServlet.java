
package com.simple.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.simple.beans.forgotbean;
import com.simple.demo.ForgotDb;


@WebServlet("/ForgotServlet")
public class ForgotServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	  protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	     

	    }

	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");

	       
	        String email = request.getParameter("email");
	      
	        forgotbean lb=new forgotbean();
	        lb.setEmail(email);
	        
	       ForgotDb ud=new ForgotDb();
	       String loginResult = ud.selectUser(lb);

	    
	        if (loginResult.equals("User found")) {
	           
	            response.sendRedirect("update.jsp");
	        } else {
	         
	            String errorMessage = "Invalid username or password. Please try again.";
	            request.setAttribute("errorMessage", errorMessage);
	            request.getRequestDispatcher("login.jsp").forward(request, response);
	        }
	  }
}


