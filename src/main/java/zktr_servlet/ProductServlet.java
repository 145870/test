package zktr_servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gwc2.Commodity;

@WebServlet("/8/list")
public class ProductServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 req.setCharacterEncoding("utf-8");
		    String where = req.getParameter("where");
		    int curpage;
		    int pagesize;
		    
		    // 判断 curpage 参数是否存在
		    if (req.getParameter("curpage") != null) {
		        curpage = Integer.parseInt(req.getParameter("curpage"));
		    } else {
		        curpage = 1; // 默认为第一页
		    }
		    
		    // 判断 pagesize 参数是否存在
		    if (req.getParameter("pagesize") != null) {
		        pagesize = Integer.parseInt(req.getParameter("pagesize"));
		    } else {
		        pagesize = 2; // 默认每页显示2条记录
		    }
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/web_gwc?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			// 获取当前页的数据	
			String sql = "SELECT * FROM commodity";
			if (where != null && !where.isEmpty()) {
			    sql += " WHERE c_name LIKE ?";
			}
			sql += " LIMIT ?, ?";
			PreparedStatement stmt = conn.prepareStatement(sql);

			// 设置查询参数
			int paramIndex = 1;
			if (where != null && !where.isEmpty()) {
			    stmt.setString(paramIndex++, "%" + where + "%");
			}
			stmt.setInt(paramIndex++, (curpage - 1) * pagesize);
			stmt.setInt(paramIndex++, pagesize);
			ResultSet rs = stmt.executeQuery();
			// 转换成 Product 的 List 集合
			List<Commodity> list = new ArrayList<>();
			while (rs.next()) {
				list.add(new Commodity(rs.getInt(1), rs.getString(2), rs.getDouble(3)));
			}
			// 获得表中所有记录的条数
			sql = "select count(*) from commodity";
			if (where != null && !where.isEmpty()) {
				 sql += " WHERE c_name LIKE ?";
			}
			PreparedStatement stmt2 = conn.prepareStatement(sql);
			if (where != null && !where.isEmpty()) {
				stmt2.setString(1, "%" + where + "%");
			}
			ResultSet rs2 = stmt2.executeQuery();
			rs2.next();
			int total = rs2.getInt(1); // 总记录数
			// 将数据保存到 request 中以便转发 jsp 显示
			req.setAttribute("list", list);
			req.setAttribute("total", total);
			req.setAttribute("where", where);
			stmt.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 转到 jsp
		req.getRequestDispatcher("list.jsp").forward(req, resp);
	}
}
