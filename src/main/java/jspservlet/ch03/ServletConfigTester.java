package jspservlet.ch03;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Servlet implementation class OurServlet
 */
@WebServlet(
	urlPatterns = { 
			"/test-servletconfig", 
			"/ServletConfigTester"
	}, 
	initParams = { 
			@WebInitParam(name = "admin", value = "root"),
			@WebInitParam(name = "email", value = "root@induk.ac.kr")
	})
public class ServletConfigTester extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private transient ServletConfig servletConfig;   

    public ServletConfigTester() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		this.servletConfig = config;
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin = servletConfig.getInitParameter("admin");
		String email = servletConfig.getInitParameter("email");
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append("������ �̸� " + admin + "</br>");
		response.getWriter().append("������ �̸��� " + email);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append("Servered at :  ").append(request.getContextPath() + "<br/>");
		response.getWriter().append("��¥ : " + LocalDate.now().toString() + "<br/>");
		response.getWriter().append("��¥ �ð� : " + LocalDateTime.now().toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
