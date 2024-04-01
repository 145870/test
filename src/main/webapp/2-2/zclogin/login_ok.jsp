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
<% 
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
		String sql="select * from user where name=? and pwd=?";
		PreparedStatement stmt=conn.prepareStatement(sql);
		stmt.setString(1,name);
		stmt.setString(2,pwd);
		ResultSet rs=stmt.executeQuery();
		if(rs.next()){
			out.print("<h1>"+name+",登录成功!</h1>");
		}else{
			out.print("<h1>账号或密码错误</h1>");
			out.print("没有账号? 请点击 <a href=\"zhuce.jsp\">注册</a>");
			out.print("或者重新登录? 请点击 <a href=\"login.jsp\">登录</a>");
		}
		conn.close();
		stmt.close();
		
	%>
</body>
</html>