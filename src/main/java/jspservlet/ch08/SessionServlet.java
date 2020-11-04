package jspservlet.ch08;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.websocket.Session;

@WebServlet({ "/ch08/sessionLogin.do", "/ch08/sessionLogout.do", "/ch08/sessionLogin2.do", "/ch08/sessionLogout2.do" })
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SessionServlet() {
        super();
    }
    
    Member registeredUser = null; // 등록된 사용자 
	public void init(ServletConfig config) throws ServletException {
		registeredUser = new Member();
		registeredUser.setId("dream@induk.ac.kr");
		registeredUser.setPw("cometrue");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession(); // 있는 경우 반환, 없는 경우 만들어서 반환
		String uri = request.getRequestURI();
		String action = uri.substring(uri.lastIndexOf("/") + 1);
		if(action.equals("sessionLogin.do")) {			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			Member m = new Member();
			m.setId(id);
			m.setPw(pw);
			if(id.equals(registeredUser.getId()) && pw.equals(registeredUser.getPw())) {				
				session.setAttribute("login", m);
				request.getRequestDispatcher("session-login-form.jsp").forward(request, response);
			}
			else {
				response.sendRedirect("session-login-form.jsp");
			}
		}
		if(action.equals("sessionLogout.do")) {
			session.invalidate();
			response.sendRedirect("session-login-form.jsp");
		}
		else
			;
		if(action.equals("sessionLogin2.do")) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String checked = request.getParameter("checked");
			System.out.println(checked);
			Member m = new Member();
			m.setId(id);
			m.setPw(pw);
			if(id.equals(registeredUser.getId()) && pw.equals(registeredUser.getPw())) {
				session.setAttribute("login", m);
				if(checked != null && checked.equals("yes")) {
					Cookie cookie_id = new Cookie("id", id);
					Cookie cookie_pw = new Cookie("pw", pw);
					response.addCookie(cookie_id);
					response.addCookie(cookie_pw);
				}
				else {
					Cookie[] cookies = request.getCookies();
					if(cookies != null){
						for(Cookie cookie : cookies){
							if(cookie.getName().equals("id") || cookie.getName().equals("pw")){
								cookie.setMaxAge(0);
								response.addCookie(cookie);
							}
						}
					}
				}

				request.getRequestDispatcher("session-login-form2.jsp").forward(request, response);
			}
			else {
				response.sendRedirect("session-login-form.2jsp");
			}
		}
		if(action.equals("sessionLogout2.do")) {
			session.invalidate();
			response.sendRedirect("session-login-form2.jsp");
		}
		else
			;
	}

}
