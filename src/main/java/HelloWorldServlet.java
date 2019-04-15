import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello-world")
public class HelloWorldServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("this works ");
//        String name = request.getParameter( "name");
        response.setContentType("text/html");
        PrintWriter output = response.getWriter();
        output.println("<h1>Hello, World!</h1>");
    }


}
