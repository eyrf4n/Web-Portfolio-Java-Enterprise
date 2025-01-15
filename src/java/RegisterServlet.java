import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PreparedStatement pstmtCheck;
    private PreparedStatement pstmtInsert;
    private Connection conn;  

    public void init() throws ServletException {
        initializeJdbc();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            if (username.length() == 0 || password.length() == 0 || email.length() == 0) {
                out.println("Username, password, and email are required!");
                request.setAttribute("loginError", "Username, password, and email are required!");
                request.getRequestDispatcher("register.jsp").include(request, response);
                return;
            }

            if (isUsernameTaken(username)) {
                request.setAttribute("loginError", "The username has already been taken. Please choose a different username.");
                request.getRequestDispatcher("register.jsp").include(request, response);
                return;
            }

            storeUser(username, password, email);
            request.setAttribute("successMessage", "Registration successful! You will be redirected in 5 seconds.");
            request.getRequestDispatcher("register.jsp").include(request, response);
        } catch (Exception ex) {
            out.println("Error: " + ex.getMessage());
        } finally {
            out.close();
        }
    }

    private void initializeJdbc() {
        try {
            String driver = "org.apache.derby.jdbc.ClientDriver";
            String connectionString = "jdbc:derby://localhost:1527/UserDB;create=true;user=app;password=app";

            Class.forName(driver);
            conn = DriverManager.getConnection(connectionString);

            pstmtCheck = conn.prepareStatement("SELECT * FROM USERDATA WHERE username = ?");
            pstmtInsert = conn.prepareStatement("INSERT INTO USERDATA (username, password, email) VALUES (?, ?, ?)");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private boolean isUsernameTaken(String username) throws SQLException {
        pstmtCheck.setString(1, username);
        ResultSet resultSet = pstmtCheck.executeQuery();
        return resultSet.next();
    }

    private void storeUser(String username, String password, String email) throws SQLException {
        pstmtInsert.setString(1, username);
        pstmtInsert.setString(2, password);
        pstmtInsert.setString(3, email);
        pstmtInsert.executeUpdate();
    }
}
