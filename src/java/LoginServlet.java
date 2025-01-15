import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    
    //database
    private static final String DB_URL = "jdbc:derby://localhost:1527/UserDB";
    private static final String DB_USER = "app";
    private static final String DB_PASSWORD = "app";
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
         try {
            // Establish the database connection
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Use a PreparedStatement to avoid SQL injection
            pstmt = conn.prepareStatement("SELECT * FROM USERDATA WHERE username = ? AND password = ?");
            pstmt.setString(1, name);
            pstmt.setString(2, password);

            // Execute the query
            rs = pstmt.executeQuery();

            // Check if the user exists in the database
            if (rs.next()) {
               // User found, check password
               String storedPassword = rs.getString("password");
               if (password.equals(storedPassword)) {
                   // Password is correct
                   if ("admin".equals(name) && "admin".equals(password)) {
                       // Redirect to the admin page
                        response.sendRedirect(request.getContextPath() + "/AdminServlet");
                   } else {
                       // Redirect to the homepage
                       HttpSession session = request.getSession();
                       session.setAttribute("name", name);
                       request.getRequestDispatcher("homepage.jsp").include(request, response);
                   }
               } else {
                   // Invalid password
                   request.setAttribute("loginError", "Invalid password!");
                   request.getRequestDispatcher("login.jsp").include(request, response);
               }
           } else {
               // User not found
               request.setAttribute("loginError", "Account not found, please register first.");
               request.getRequestDispatcher("login.jsp").include(request, response);
           }
        } catch (Exception ex) {
            out.println("Error:" + ex.getMessage());
        } finally {
            // Close resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            out.close();
        }        
    }
}