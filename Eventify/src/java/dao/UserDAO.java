package dao;
import model.Participant;
import model.*;
import java.sql.*;

public class UserDAO {

    public User login(String email, String password) throws SQLException {
        String sql = "SELECT * FROM users WHERE email=? AND password=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String role = rs.getString("role");
                if ("ADMIN".equals(role))
                    return new Admin(id, name, email, password);
                else
                    return new Participant(id, name, email, password);
            }
        }
        return null;
    }

    public boolean register(String name, String email, String password) throws SQLException {
        String sql = "INSERT INTO users (name, email, password, role) VALUES (?,?,?,'PARTICIPANT')";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            return ps.executeUpdate() > 0;
        }
    }
}