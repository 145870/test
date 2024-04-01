<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-04
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
        String sql="insert into messages(u_id,m_txt) values(?,?)";
        PreparedStatement stmt=conn.prepareStatement(sql);
        String id=session.getAttribute("userID")+"";
        String txt=request.getParameter("m_text");


        stmt.setObject(1,id);
        stmt.setObject(2,txt);
        stmt.executeUpdate();
    %>
    <h1>留言成功</h1>
    返回 <a href="home.jsp">首页</a>
</body>
</html>
