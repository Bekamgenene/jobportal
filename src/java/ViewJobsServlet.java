import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

public class ViewJobsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<String> jobs = new ArrayList<>();
        Connection conn = DatabaseConnection.connect();
        
        if (conn != null) {
            try {
                String query = "SELECT id, title, description, location, company_name FROM jobs_internships";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(query);

                while (rs.next()) {
                    String jobDetails = rs.getString("title") + " - " + rs.getString("company_name");
                    jobs.add(jobDetails);
                }

                request.setAttribute("jobs", jobs);
                RequestDispatcher dispatcher = request.getRequestDispatcher("view_jobs.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("view_jobs_error.jsp");
            }
        } else {
            response.sendRedirect("db_error.jsp");
        }
    }
}
