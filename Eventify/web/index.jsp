<%-- 
    Document   : index
    Created on : 9 Jun 2026, 00.34.08
    Author     : Lenovo
--%>

<%@ page import="model.*, java.util.*, dao.*" %>
<%
    User user = (User) session.getAttribute("user");
    if (user == null || !"ADMIN".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }
    List<Event> events = new EventDAO().getAllEvents();
%>
<!DOCTYPE html>
<html>
<head><title>Dashboard Admin - Eventify</title></head>
<body>
    <h2>Selamat datang, <%= user.getName() %></h2>
    <h3>Daftar Event</h3>
    <table border="1">
        <tr><th>Nama</th><th>Tanggal</th><th>Lokasi</th><th>Kapasitas</th><th>Aksi</th></tr>
        <% for (Event e : events) { %>
        <tr>
            <td><%= e.getName() %></td>
            <td><%= e.getDate() %></td>
            <td><%= e.getLocation() %></td>
            <td><%= e.getCapacity() %></td>
            <td>
                <a href="event?action=delete&id=<%= e.getEventId() %>">Hapus</a>
            </td>
        </tr>
        <% } %>
    </table>
    <a href="logout">Logout</a>
</body>
</html>