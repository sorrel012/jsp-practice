import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hi")
public class Sorrel extends HttpServlet {
    
    @Override
    public void service(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        PrintWriter out = resp.getWriter();
        
        for(int i = 0; i < 100; i++) {
            out.println((i+1) + ": Hello Servlet!!");
        }
    }
}