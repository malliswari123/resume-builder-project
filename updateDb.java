package com.simple.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.simple.beans.updatebean;

public class updateDb {

    public String UserPassword(updatebean sb) {
        String result = ""; // Variable to store the result message
        mydb db = new mydb();
        Connection con = db.getCon();

        if (con != null) {
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try {
                // Check if the user exists in the database
                String query = "SELECT * FROM signup WHERE email=?";
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, sb.getEmail());
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    // User with the provided email exists, update the password
                    String updateQuery = "UPDATE signup SET password = ? WHERE email = ?";
                    pstmt = con.prepareStatement(updateQuery);
                    pstmt.setString(1, sb.getPassword()); // Assuming sb.getPassword() returns the new password
                    pstmt.setString(2, sb.getEmail());
                    
                    int rowsAffected = pstmt.executeUpdate();
                    if (rowsAffected > 0) {
                        result = "Password updated successfully";
                    } else {
                        result = "Failed to update password";
                    }
                } else {
                    result = "User not found";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                result = "Failed to update password";
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
            result = "Failed to update password";
        }

        return result;
    }

}
