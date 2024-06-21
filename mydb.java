package com.simple.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class mydb {

    Connection con = null;

    public Connection getCon() {

        try {
            // Correct the driver class name
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Check your database URL
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resume", "root", "Rgukto123!");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
