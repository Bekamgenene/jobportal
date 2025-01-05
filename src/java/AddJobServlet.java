import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddJobServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String location = request.getParameter("location");
        String companyName = request.getParameter("company_name");

        Connection conn = DatabaseConnection.connect();
        if (conn != null) {
            try {
                String query = "INSERT INTO jobs (title, description, location, company_name) VALUES (?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, title);
                stmt.setString(2, description);
                stmt.setString(3, location);
                stmt.setString(4, companyName);

                int result = stmt.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("admin_dashboard.jsp?success=job_added");
                } else {
                    response.sendRedirect("admin_dashboard.jsp?error=job_add_failed");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("admin_dashboard.jsp?error=database");
            }
        } else {
            response.sendRedirect("admin_dashboard.jsp?error=connection");
        }
    }
}