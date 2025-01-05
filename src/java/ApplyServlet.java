import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.nio.file.Paths;

public class ApplyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Parse form data
        String jobId = request.getParameter("jobId");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        Part filePart = request.getPart("cvFile"); // Retrieves the uploaded file

        // Save the file to the server
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir(); // Create uploads directory if it doesn't exist
        }
        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath); // Save the file

        // Save application details to the database
        Connection conn = DatabaseConnection.connect();
        if (conn != null) {
            try {
                String sql = "INSERT INTO applications (job_id, name, email, cv_file) VALUES (?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, jobId);
                stmt.setString(2, name);
                stmt.setString(3, email);
                stmt.setString(4, fileName);

                int rowsInserted = stmt.executeUpdate();
                if (rowsInserted > 0) {
                    response.sendRedirect("application_success.jsp"); // Redirect to success page
                } else {
                    response.sendRedirect("application_error.jsp"); // Redirect to error page
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("db_error.jsp");
            }
        } else {
            response.sendRedirect("db_error.jsp"); // Database connection error
        }
    }
}
