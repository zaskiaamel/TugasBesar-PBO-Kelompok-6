package servlet;
import dao.UserDAO;
import model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            UserDAO dao = new UserDAO();
            User user = dao.login(email, password);
            
            if (user != null) {
                HttpSession session = req.getSession();
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());

                if ("ADMIN".equals(user.getRole()))
                    resp.sendRedirect("dashboard-admin.jsp");
                else
                    resp.sendRedirect("dashboard-user.jsp");
            } else {
                req.setAttribute("error", "Email atau password salah!");
                req.getRequestDispatcher("login.jsp").forward(req, resp);
            }
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}