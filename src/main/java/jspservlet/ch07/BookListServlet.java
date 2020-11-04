package jspservlet.ch07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/ch07/book-list.do")
public class BookListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BookListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);

		int last;
		last = uri.lastIndexOf('/');

		String command = uri.substring(last + 1);
		System.out.println(command);
		RequestDispatcher rd = null;
    	if(command.equals("book-list.do")) {
			List<BookModel> bookList = new ArrayList<>();
			BookModel book1 = new BookModel("978-89-6341-055-5-93560",
					"JSP 프로그래밍", 38.00);
			BookModel book2 = new BookModel("978-89-6341-011-1-93560",
					"Ubuntu 서버 실습", 25.95);
			BookModel book3 = new BookModel("978-89-6341-055-1-93560",
					"Java 프로그래밍", 33.95);
			bookList.add(book1);
			bookList.add(book2);
			bookList.add(book3);
			request.setAttribute("booklist", bookList);
			rd = request.getRequestDispatcher("book-list.jsp");

		}
    	if(rd != null)
			rd.forward(request, response);
    	else
    		System.out.println("error");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
