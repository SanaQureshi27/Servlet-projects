
package com.code.verse.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

    private static Connection con;
    private static final String URL = "jdbc:mysql://localhost:3306/code_verse"; // Replace with your DB URL
    private static final String USERNAME = "root"; // Replace with your DB username
    private static final String PASSWORD = "12345"; // Replace with your DB password

    // Private constructor to prevent instantiation
    private ConnectionProvider() {}

    // Method to provide connection
    public static Connection getConnection() throws SQLException {
        if (con == null || con.isClosed()) {
            try {
                // Load MySQL JDBC Driver (optional for JDBC 4.0+)
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
                System.out.println("Database connected successfully.");
            } catch (ClassNotFoundException e) {
                System.err.println("Error loading MySQL driver: " + e.getMessage());
                e.printStackTrace();
            } catch (SQLException e) {
                System.err.println("Connection failed: " + e.getMessage());
                e.printStackTrace();
                throw e;
            }
        }
        return con;
    }
}
