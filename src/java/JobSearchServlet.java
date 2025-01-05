import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.ArrayList;

public class JobSearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("query");  // The search keyword entered by the user
        ArrayList<Job> jobList = new ArrayList<>();  // List to store job results

        // Connect to the database
        Connection conn = DatabaseConnection.connect();
        if (conn != null) {
            try {
                // Query to search jobs by title or company
                String sql = "SELECT * FROM jobs WHERE title LIKE ? OR company LIKE ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, "%" + query + "%");
                stmt.setString(2, "%" + query + "%");

                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    // Create a Job object for each job result and add to the list
                    Job job = new Job(rs.getInt("id"), rs.getString("title"), rs.getString("company"), rs.getString("location"));
                    jobList.add(job);
                }

                // Set the job list as a request attribute
                request.setAttribute("jobList", jobList);
                // Forward the request to the search results page
                RequestDispatcher dispatcher = request.getRequestDispatcher("searchResults.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("db_error.jsp"); // Error in SQL execution
            }
        } else {
            response.sendRedirect("db_error.jsp"); // Database connection error
        }
    }
}
