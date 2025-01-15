import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PreparedStatement pstmt;
    private Connection conn;  
    private static final String SELECT_FEEDBACK_QUERY = "SELECT * FROM FEEDBACK";

    public void init() throws ServletException {
        initializeJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        try {
            if (name.length() == 0 || email.length() == 0 || message.length() == 0) {
//                out.println("Username, password, and email are required!");
                request.setAttribute("loginError", "Name, email and message are required!");
                request.getRequestDispatcher("feedback.jsp").include(request, response);
                return;
            }
            storeUser(name, email, message);  // Pass feedback parameter
            //out.println("Registered successfully");
            request.setAttribute("successMessage", "Feedback Submitted!");
            request.getRequestDispatcher("feedback.jsp").include(request, response);
        } catch (Exception ex) {
            out.println("Error:" + ex.getMessage());
        } finally {
            out.close();
        }
    }

    //connection
    private void initializeJdbc() {
        try {
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/UserDB;create=true;user=app;password=app";

            Class.forName(driver);
            conn = DriverManager.getConnection(connectionString);

            pstmt = conn.prepareStatement("insert into FEEDBACK" + "(name, email, message)" + "values (?, ?, ?)");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void storeUser(String name, String email, String message) throws SQLException {
        pstmt.setString(1, name);
        pstmt.setString(2, email);
        pstmt.setString(3, message);
        pstmt.executeUpdate();  // Execute the update statement
    }
    
    //fetch data dari database
    protected void retrieveFeedbackData(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        // JDBC URL for your UserDB database
        String jdbcUrl = "jdbc:derby://localhost:1527/UserDB";
        String dbUsername = "app";
        String dbPassword = "app";
        
        

        try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);
                PreparedStatement selectFeedbackStatement = connection.prepareStatement(SELECT_FEEDBACK_QUERY);
                ResultSet resultSet = selectFeedbackStatement.executeQuery()) {

            // Create a List to store feedback data
            List<Feedback> feedbackList = new ArrayList<>();
            

            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String message = resultSet.getString("message");

                Feedback feedback = new Feedback();
                feedback.setName(name);
                feedback.setEmail(email);
                feedback.setMessage(message);

                feedbackList.add(feedback);
            }

            request.setAttribute("feedbackList", feedbackList);
            request.getRequestDispatcher("admin.jsp").forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception or log it
            request.setAttribute("errorMessage", "Error: " + e.getMessage());
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        }
    }
}