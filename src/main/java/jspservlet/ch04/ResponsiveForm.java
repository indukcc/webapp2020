package jspservlet.ch04;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/ch04/responsive-form", name = "ResponsiveForm")
public class ResponsiveForm extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>\n" +
                "<html>\n" +
                "<head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "    <title>Responsive Form</title>\n" +
                "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
                "    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "    <script src=\"js/bootstrap.bundle.min.js\"></script>\n" +
                "    <script src=\"js/jquery.slim.js\"></script>\n" +
                "</head>\n" +
                "<body>\n" +
                "<div class=\"container-fluid\">\n" +
                "    <div class=\"row no-gutter\">\n" +
                "        <div class=\"d-none d-md-flex col-md-4 col-lg-6 bg-image\"></div>\n" +
                "        <div class=\"col-md-8 col-lg-6\">\n" +
                "            <div class=\"login d-flex align-items-center py-5\">\n" +
                "                <div class=\"container\">\n" +
                "                    <div class=\"row\">\n" +
                "                        <div class=\"col-md-9 col-lg-8 mx-auto\">\n" +
                "                            <h3 class=\"login-heading mb-4\">Welcome back!</h3>\n" +
                "                            <form>\n" +
                "                                <div class=\"form-label-group\">\n" +
                "                                    <input type=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n" +
                "                                    <label for=\"inputEmail\">Email address</label>\n" +
                "                                </div>\n" +
                "\n" +
                "                                <div class=\"form-label-group\">\n" +
                "                                    <input type=\"password\" id=\"inputPassword\" class=\"form-control\" placeholder=\"Password\" required>\n" +
                "                                    <label for=\"inputPassword\">Password</label>\n" +
                "                                </div>\n" +
                "\n" +
                "                                <div class=\"custom-control custom-checkbox mb-3\">\n" +
                "                                    <input type=\"checkbox\" class=\"custom-control-input\" id=\"customCheck1\">\n" +
                "                                    <label class=\"custom-control-label\" for=\"customCheck1\">Remember password</label>\n" +
                "                                </div>\n" +
                "                                <button class=\"btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2\" type=\"submit\">Sign in</button>\n" +
                "                                <div class=\"text-center\">\n" +
                "                                    <a class=\"small\" href=\"#\">Forgot password?</a></div>\n" +
                "                            </form>\n" +
                "                        </div>\n" +
                "                    </div>\n" +
                "                </div>\n" +
                "            </div>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "</div>\n" +
                "\n" +
                "</body>\n" +
                "</html>");
    }
}
