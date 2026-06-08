package dao;
import java.sql.*;

public class DBConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/eventify_db";
    private static final String USER = "root";
    private static final String PASS = ""; // sesuaikan password MySQL kamu

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (ClassNotFoundException e) {
            throw new SQLException("Driver tidak ditemukan: " + e.getMessage());
        }
    }
}