<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>历史留言:</h4>
<%

  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");

  String sql="select * from messages where u_id=?";

  PreparedStatement stmt=conn.prepareStatement(sql);
  stmt.setObject(1,session.getAttribute("userID"));
  ResultSet rs=stmt.executeQuery();

  out.print("<table border='1'>");
  out.print("<tr><th>序号</th><th>留言内容</th><th>留言时间</th></tr>");
  int i=0;
  while (rs.next()){
    i++;
    out.print("<tr><td>"+i+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
  }
  out.print("</table>");
%>
返回<a href="home.jsp">首页</a>
</body>
</html>
