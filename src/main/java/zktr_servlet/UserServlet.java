package zktr_servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsersDAO;
import enlity.User;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	private UsersDAO dao=new UsersDAO();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<User> list=dao.queryAll();
		req.setAttribute("list",list);
		req.getRequestDispatcher("7-JSTL/user-list.jsp").forward(req, resp);
	}
}
