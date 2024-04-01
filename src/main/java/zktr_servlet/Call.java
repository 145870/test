package zktr_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/call")
public class Call extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a=Integer.valueOf(request.getParameter("a"));
		int b=Integer.valueOf(request.getParameter("b"));
		String o=request.getParameter("o");
		
		double r=0;
		if ("+".equals(o)) {
			r=a+b;
		}else if("-".equals(o)) {
			r=a-b;
		}else if("*".equals(o)) {
			r=a*b;
		}
		else if("/".equals(o)) {
			r=a/b;
		}
		else if("%".equals(o)) {
			r=a%b;
		}
		HttpSession session=request.getSession();
		session.setAttribute("a", a);
		session.setAttribute("b", b);
		session.setAttribute("o", o);
		session.setAttribute("r",r);
		response.sendRedirect("6-EL/call.jsp");
	}

}
