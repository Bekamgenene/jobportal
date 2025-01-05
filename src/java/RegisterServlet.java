import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        Connection conn = DatabaseConnection.connect();
        if (conn != null) {
            try {
                String sql = "INSERT INTO users (username, password, email, phone) VALUES (?, ?, ?, ?)";
                PreparedStatement pst = conn.prepareStatement(sql);
                pst.setString(1, username);
                pst.setString(2, hashPassword(password)); // Hash the password
                pst.setString(3, email);
                pst.setString(4, phone);
                
                int result = pst.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("login.jsp?success=registered");
                } else {
                    request.setAttribute("errorMessage", "Registration failed. Please try again.");
                    request.getRequestDispatcher("register.jsp").forward(request, response);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("errorMessage", "An error occurred while processing your registration.");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Database connection failed.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

    public static String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
}