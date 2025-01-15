import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet 
{
       protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);

        out.println("<html>");
        out.println("<head>");
        out.println("<style>");
        out.println("@import url('https://fonts.googleapis.com/css2?family=Balsamiq+Sans&family=Koulen&family=Kufam&family=Montserrat:wght@500&family=Oswald:wght@500&family=Playfair+Display&display=swap');   ");
        out.println("*{margin: 0; padding: 0; font-family: montserrat; box-sizing: border-box;}");
        out.println("body{background-color: #2e364a; display: flex; align-items: center; justify-content: center;}");
        out.println("h1 {color:green; text-align:center}");
        out.println(".logout-message {background-color: #4caf50; color: #fff; padding: 20px; border-radius: 5px; text-align: center; box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);}");
        out.println("</style>");
        out.println("<script>");
        out.println("function redirect() {");
        out.println("  window.location.href = 'index.html';");
        out.println("}");
        out.println("</script>");
        out.println("</head>");
        out.println("<body>");

        if (session != null) {
            session.invalidate();
            out.println("<div class='logout-message'>");
            out.println("<h2>" + "Logged out successfully!" + "</h2>");
            out.println("</div>");
        } else {
            out.println("<p>" + "You haven't logged in. Please login here." + "</p>");
        }

        out.println("<script>");
        out.println("setTimeout(redirect, 3000);"); // Redirect after 3 seconds
        out.println("</script>");

        out.println("</body>");
        out.println("</html>");
        out.close();
    }
}
