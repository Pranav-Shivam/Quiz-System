package com.helper;

import java.sql.*;
import java.io.*;

public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnections() {
        try {
            if (con == null) {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz", "root", "root");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return con;
    }
}
