package user_;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/10file/work/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		UserDAO dao=new UserDAO();
		
		String phone=req.getParameter("phone");
		String pwd=req.getParameter("pwd");
		if (dao.isExists(phone, pwd)) {
			User u=dao.selectByPhone(phone);
			req.setAttribute("user", u);
			req.getRequestDispatcher("home.jsp").forward(req, resp);
		}else {
			resp.getWriter().print("账号或密码错误 重新<a href='login.jsp'>登录</a>");
		}
	}
}
