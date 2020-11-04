package jspservlet.ch08;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/ch08/rewrite-2")
public class RewriteServlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String n = request.getParameter("urlrewriting");
            out.print("Welcome " + n);
            out.print("<a href='./rewrite-3?urlrewriting=" + n + "'>visit</a>");
            out.close();
        }
        catch (Exception e) {             System.out.println(e);         }

    }
}
