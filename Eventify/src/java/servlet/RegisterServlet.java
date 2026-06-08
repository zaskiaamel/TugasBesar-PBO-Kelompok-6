public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(
        HttpServletRequest req,
        HttpServletResponse resp)
        throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try {
            UserDAO dao = new UserDAO();

            if(dao.register(name,email,password)){
                resp.sendRedirect("login.jsp");
            }else{
                resp.sendRedirect("register.jsp");
            }

        } catch(Exception e){
            throw new ServletException(e);
        }
    }
}