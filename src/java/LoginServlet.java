import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get user credentials from the form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Here you would normally check the credentials from the database
        // For demonstration, let's assume admin login
        if ("admin".equals(username) && "12345678".equals(password)) {
            // Set session attribute for user role
            HttpSession session = request.getSession();
            session.setAttribute("role", "admin");

            // Redirect to the admin dashboard
            response.sendRedirect("admin_dashboard.jsp");
        } else {
            // Invalid login - redirect to login page again
            response.sendRedirect("login.jsp?error=true");
        }
    }
}
