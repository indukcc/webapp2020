package jspservlet.ch06;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(urlPatterns = "/ch06/conn",  name = "ConnectionServlet")
public class ConnectionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement psmt = null;

        try {
            Class.forName("oracle.jdbc.OracleDriver");
            String url = "jdbc:oracle:thin:@localhost:1521:xe";
            String id = "system";
            String pw = "cometrue";
            System.out.println("Can load DB Driver");
            try {
                con = DriverManager.getConnection(url,id,pw);
                System.out.println("legal DB Account ");
            } catch (SQLException e) {
                System.out.println("illegal DB Account");
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            System.out.println("Can't load DB Driver");
            e.printStackTrace();
        }
    }
}
