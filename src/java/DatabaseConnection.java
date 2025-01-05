import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection connect() {
        try {
            String url = "jdbc:mysql://localhost:3306/job_internship_portal";
            String username = "root"; 
            String password = "root";    
            Connection conn = DriverManager.getConnection(url, username, password);
            return conn;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
