package saying.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saying.DAO.SayingDAO;
import saying.ent.Saying;


@WebServlet("/saying/delById")
public class DelSayByIdServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        
		int del=new SayingDAO().delSById(req.getParameter("sid"));
		if (del>0) {
			resp.getWriter().write("删除成功");
		}else {
			resp.getWriter().write("err");
		}
	}

}
