import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/cats")
public class CatsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        CatsController dao = new CatsController();
        req.setAttribute("cats", dao.getAllCats());  // will return a list with 3 cats form Cats Controller
        req.getRequestDispatcher("/catsList.jsp").forward(req, res);


    }  // doGet

}  // CatsServlet class
