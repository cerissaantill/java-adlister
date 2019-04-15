import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/count")
public class CountServlet extends HttpServlet {

    int count = 0;

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        count++;
        response.setContentType("text/html");
        response.getWriter().println("<h2>This page accessed " + count + " time(s)</h2>");



    }  // public void doGet
}  // CountServlet class
