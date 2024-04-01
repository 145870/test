package saying.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import saying.DAO.SayingDAO;
import saying.vo.ChartDCVo;

@WebServlet("/saying/chartdc")
public class ChartDCServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ChartDCVo> list=new SayingDAO().chartDC();
		
		//总数
		int total=0;
		for(ChartDCVo vo:list) {
			total+=vo.getCount();
		}
		req.setAttribute("total", total);
		req.setAttribute("chartdc", list);
		req.getRequestDispatcher("chartdc.jsp").forward(req, resp);
	}

}
