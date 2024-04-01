package jsonandajax;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson2.JSONArray;

import user_.User;
import user_.UserDAO;

@WebServlet("/11ajaxAndJson/del")
public class DelServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/plain");
        resp.setCharacterEncoding("UTF-8");
        String id=req.getParameter("uid");
		
		UserDAO dao=new UserDAO();
		if (dao.delById(id)>0) {
			resp.getWriter().write("删除成功");
		}else {
			resp.getWriter().write("删除失败");
		}
	}
}
