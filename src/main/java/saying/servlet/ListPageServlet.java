package saying.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saying.DAO.SayingDAO;

@WebServlet("/saying/listpage")
public class ListPageServlet extends HttpServlet{
	private SayingDAO sdao=new SayingDAO();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获得请求参数
		int curpage=Integer.valueOf(request.getParameter("curpage"));
		int pagesize=Integer.valueOf(request.getParameter("pagesize"));
		
		//调用dao
		Map<String, Object> map=sdao.queryByPage(curpage, pagesize);
		request.setAttribute("map", map);
		
		//跳转
		request.getRequestDispatcher("list-page.jsp").forward(request, response);
	}

}
