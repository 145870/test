<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>商品列表</h1><br>
<div>
	<%=session.getAttribute("name")==null?"游客":session.getAttribute("name")+",欢迎您" %>
</div>
<hr>
		<% 
		request.setCharacterEncoding("utf-8");
		
		//sql语句
		String sql="select * from commodity";
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/web_gwc?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
		PreparedStatement stmt=conn.prepareStatement(sql);
		ResultSet rs=stmt.executeQuery();
		while(rs.next()){
			%>
				<div>商品名:<%=rs.getString(2) %></div>
				<div>价格:￥<%=rs.getString(3) %></div>
				<div><a href="add.jsp?pid=<%=rs.getInt(1) %>>">加入购物车</a></div>
				<hr>
			<%
		}
		rs.close();
		stmt.close();
		conn.close();
		
		
	%>
</body>
</html>