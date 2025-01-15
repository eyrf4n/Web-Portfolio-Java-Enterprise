import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        FeedbackServlet feedbackServlet = new FeedbackServlet();
        feedbackServlet.retrieveFeedbackData(request, response);

        // Retrieve feedbackList from the request attribute set by retrieveFeedbackData
        Object feedbackList = request.getAttribute("feedbackList");

        // Set feedbackList as a request attribute for admin.jsp
        request.setAttribute("feedbackList", feedbackList);

        // Forward the request to admin.jsp
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

}
