
package com.simple.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.simple.beans.signupbean;
import com.simple.beans.updatebean;

public class SignupDb {

    public String insertUser(signupbean sb) {
        String result = ""; // Variable to store the result message
        mydb db = new mydb();
        Connection con = db.getCon();

        if (con != null) {
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            
            try {
                // Check if the username already exists
                String query = "SELECT * FROM signup WHERE email=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, sb.getEmail());
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    // User with the same name already exists
                    result = "User with this username already exists";
                    
                } else {
                    // Insert the new user
                    pstmt = con.prepareStatement("INSERT INTO signup (username, email, password,phone) VALUES (?, ?, ?, ?)");
                    pstmt.setString(1, sb.getUsername());
                    pstmt.setString(2, sb.getEmail());
                    pstmt.setString(3, sb.getPassword());
                    pstmt.setString(4, sb.getPhone());
                    int rowsInserted = pstmt.executeUpdate();

                    if (rowsInserted > 0) {
                        result = "User registered successfully";
                    } else {
                        result = "Failed to register user";
                    }
                }
            } catch (SQLException e) {
                e.printStackTrace();
                result = "Failed to register user";
            } finally {
                try {
                    // Close resources
                    if (rs != null) {
                        rs.close();
                    }
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            // Print a message or throw an exception if the connection is null
            System.out.println("Failed to obtain database connection.");
            result = "Failed to register user";
        }

        return result;
    }

	

	
}
