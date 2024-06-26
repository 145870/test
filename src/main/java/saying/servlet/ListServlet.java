package saying.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saying.DAO.SayingDAO;

@WebServlet("/saying/list")
public class ListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SayingDAO dao=new SayingDAO();
		req.setAttribute("list", dao.query());
		req.getRequestDispatcher("list.jsp").forward(req, resp);
		

	}
}
