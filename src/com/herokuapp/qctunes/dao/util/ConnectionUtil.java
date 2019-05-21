package com.herokuapp.qctunes.dao.util;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {

    static {
        try {
            // forces the driver to register itself,
            // so that Java knows how to handle those database connection strings
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public static Connection getNewConnection() throws SQLException {
        String dbUrl = "jdbc:mysql://localhost:3306/qctunes";
        String user = "root";
        String pw = "root";
//        String dbUrl = "jdbc:postgresql://ec2-54-225-106-93.compute-1.amazonaws.com:5432/d2ihg7f4ifpm3v?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory";
//        //?sslmode=require, it's to connect to database from your machine
//        // ?ssl=true&sslfactory=org.postgresql.ssl.NonValidatingFactory
//        String user = "zpfymqztsbzhvc";
//        String pw = "a7ea039d9bfc9244aeb51aa0a4f83b2de19a29b85deec17e2b5f792a100dd9e8";
        return DriverManager.getConnection(dbUrl, user, pw);
    }
}
