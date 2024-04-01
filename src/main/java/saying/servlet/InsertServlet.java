package saying.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saying.DAO.SayingDAO;

@WebServlet("/saying/insert")
public class InsertServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		SayingDAO dao=new SayingDAO();
		req.setCharacterEncoding("utf-8");
		
		String name=req.getParameter("name");
		String txt=req.getParameter("txt");
		
		dao.doInsert(name, txt);
	    resp.sendRedirect("list");
	}

}
