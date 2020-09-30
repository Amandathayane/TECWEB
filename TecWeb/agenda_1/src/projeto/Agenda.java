package projeto;


import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Agenda
 */
@WebServlet("/Agenda")
public class Agenda extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(">>>>>>>>>>>>>> REQUEST " + request.getMethod());
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		request.setAttribute("login", login);
		
		if(login.equals("amanda") && senha.equals("amanda123")) {
			RequestDispatcher rd = request.getRequestDispatcher("bemvindo.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}
		
	}
}