package dao;
import model.Event;
import java.sql.*;
import java.util.*;

public class EventDAO {

    public List<Event> getAllEvents() throws SQLException {
        List<Event> list = new ArrayList<>();
        String sql = "SELECT * FROM events";
        try (Connection conn = DBConnection.getConnection();
             Statement st = conn.createStatement();
             ResultSet rs = st.executeQuery(sql)) {
            while (rs.next()) {
                list.add(new Event(
                    rs.getInt("event_id"), rs.getString("name"),
                    rs.getString("description"), rs.getDate("date"),
                    rs.getString("location"), rs.getInt("capacity")
                ));
            }
        }
        return list;
    }

    public boolean createEvent(Event event, int adminId) throws SQLException {
        String sql = "INSERT INTO events (name, description, date, location, capacity, created_by) VALUES (?,?,?,?,?,?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, event.getName());
            ps.setString(2, event.getDescription());
            ps.setDate(3, new java.sql.Date(event.getDate().getTime()));
            ps.setString(4, event.getLocation());
            ps.setInt(5, event.getCapacity());
            ps.setInt(6, adminId);
            return ps.executeUpdate() > 0;
        }
    }

    public boolean deleteEvent(int eventId) throws SQLException {
        String sql = "DELETE FROM events WHERE event_id=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, eventId);
            return ps.executeUpdate() > 0;
        }
    }
}