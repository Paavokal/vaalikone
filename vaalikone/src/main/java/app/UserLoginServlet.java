package app;
 
import java.io.*;
import java.sql.SQLException;
 
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.UserDao;
import data.User;
 
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UserLoginServlet() {
        super();
    }
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
         
        UserDao userDao = new UserDao();
         
        try {
            User user = userDao.checkLogin(email, password);
            String destPage = "login.jsp";
            
                        
            if (user != null) {
                HttpSession session = request.getSession();
                session.setMaxInactiveInterval(5*60);
                session.setAttribute("user", user);
                
                //Cookie testi "Welcome"
                Cookie message = new Cookie("message", "Welcome");
                response.addCookie(message);
    


                destPage = "/admin/admin.jsp";
                
            } else {
                String message = "Invalid email/password";
                request.setAttribute("message", message);
            }
             
            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
            dispatcher.forward(request, response);
             
        } catch (SQLException | ClassNotFoundException ex) {
            throw new ServletException(ex);
        }
    }
}