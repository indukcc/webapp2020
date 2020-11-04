package jspservlet.ch03;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletContextTester", urlPatterns = "/ServletContextTester")
public class ServletContextTester extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        ServletContext sc = getServletContext();
        String driverName = sc.getInitParameter("driver-name");
        out.println("driver name is = " + driverName + "<br/>");
        out.println("name = " + request.getParameter("name") + "<br/>");
        out.println("queryString = " + request.getQueryString());
        out.close();
    }
}
