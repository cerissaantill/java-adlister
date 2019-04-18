
import javax.servlet.ServletException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class LogoutServlet extends HttpServlet {

@WebServlet(name = "LogoutServlet", urlPatterns = "/logout")

    public class LoginServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            request.getSession().setAttribute("user", false);
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            request.getSession().invalidate();
            response.sendRedirect("/login");


            }

        }
    }
