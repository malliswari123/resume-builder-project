package com.simple.demo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.simple.beans.NextFilebean;

public class NextFileDb {

    public String insertUser(NextFilebean sb) {
        String result = ""; // Variable to store the result message
        mydb db = new mydb();
        Connection con = db.getCon();

        if (con != null) {
            PreparedStatement pstmt = null;

            try {
                // Insert the new user
                pstmt = con.prepareStatement("INSERT INTO resumedata (name, contact, about, follow, education, skills, interests, certificate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                pstmt.setString(1, sb.getName());
                pstmt.setString(2, sb.getContact());
                pstmt.setString(3, sb.getAbout());
                pstmt.setString(4, sb.getFollow());
                pstmt.setString(5, sb.getEducation());
                pstmt.setString(6, sb.getSkills());
                pstmt.setString(7, sb.getInterests());
                pstmt.setString(8, sb.getCertificate());

                int rowsInserted = pstmt.executeUpdate();

                if (rowsInserted > 0) {
                    result = "User registered successfully";
                } else {
                    result = "Failed to register user";
                }

            } catch (SQLException e) {
                e.printStackTrace();
                result = "Failed to register user";
            } finally {
                try {
                    // Close resources
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
