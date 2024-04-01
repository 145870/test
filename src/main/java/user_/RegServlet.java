package user_;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/10file/work/reg")
@MultipartConfig
public class RegServlet extends HttpServlet {
	private UserDAO dao = new UserDAO();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");

		String uname = req.getParameter("name");
		String upwd = req.getParameter("pwd");
		String uphone = req.getParameter("phone");
		String uaddress = req.getParameter("address");
		Part p = req.getPart("avatar");

		if (dao.selectByPhone(uphone) != null) {
			resp.getWriter().write("该手机号已被注册请重新<a href='reg.jsp'>注册</a>");
		} else {
			String cp = p.getHeader("content-disposition");
			String fileName = cp.split(";")[2].split("=")[1].replaceAll("\"", "");

			String endName = fileName.substring(fileName.lastIndexOf('.'));

			String rndName = UUID.randomUUID().toString();

			String root = this.getServletContext().getRealPath("");

			String photo = root + "images\\" + rndName + endName;
			
			p.write(photo);
			
			
			if (dao.insert(uname, upwd, uphone, uaddress, rndName + endName)) {
				resp.getWriter().write("注册成功去<a href='login.jsp'>登录</a>");
			}else {
				resp.getWriter().write("注册失败请重新<a href='reg.jsp'>注册</a>");
			}
			
			
		}

	}
}
