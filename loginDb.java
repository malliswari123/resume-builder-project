package com.simple.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.simple.beans.loginbean;

public class loginDb {

    public String selectUser(loginbean lb) {
        String result = "User not found"; // Default result if no user found
        mydb db = new mydb();
        Connection con = db.getCon();

        if (con != null) {
            try {
                Statement stat = con.createStatement();
                String query = "SELECT * FROM signup WHERE email ='" + lb.getEmail() + "' AND password ='" + lb.getPassword() + "'";
                ResultSet rs = stat.executeQuery(query);

                // Check if the result set has any rows
                if (rs.next()) {
                    // User found, set result accordingly
                    result = "User found";
                } else {
                    // User not found, set result accordingly
                    result = "User not found";
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    // Close resources
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            // Print a message or throw an exception if the connection is null
            System.out.println("Failed to obtain database connection.");
        }
        return result;
    }
}
