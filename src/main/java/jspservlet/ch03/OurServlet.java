package jspservlet.ch03;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        urlPatterns = {
                "/OurServlet",
                "/today"
        },
        initParams = {
                @WebInitParam(name = "init-param", value = "init-value")
        })
public class OurServlet extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init();
        System.out.println("init : " + config.getInitParameter("init-param"));
    }
    public OurServlet() {
        System.out.println("constructor : ");
    }
    /*
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("service : ");
        super.service(req, resp);
    }
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("<html>\n" +
                "<head>\n" +
                "    <title>Title</title>\n" +
                "</head>\n" +
                "<body>Get Method");
        out.println("<form action=\"OurServlet\" method=\"get\" name=\"get\">");
        out.println("<label for=\"name\">First name:</label><br>");
        out.println("<input type=\"text\" id=\"get-name\" name=\"name\" value=\"egyou\"><br>");
        out.println("</form></body>");
        System.out.println("doPost : " + request.getParameter("name") + " : " + request.getParameter("phone"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        out.println("<h1> doGet : " + request.getParameter("name") + " : " + request.getParameter("phone") + "<h1>");
        System.out.println("doGet : " + request.getParameter("name") + " : " + request.getParameter("phone"));
    }
}