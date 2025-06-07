package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {

    public static Connection getConn() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // or your DB driver
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctore", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
