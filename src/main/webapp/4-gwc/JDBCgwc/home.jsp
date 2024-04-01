<%@ page import="gwc2.Commodity" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>商品列表</h1>

<%
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/web_gwc?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");

    String sql="select * from commodity";
    PreparedStatement stmt=conn.prepareStatement(sql);
    List<Commodity> list=new ArrayList<>();
    ResultSet rs=stmt.executeQuery();
    while (rs.next()){
        out.print(rs.getString(2) + "<br>");
        out.print("价格:￥"+rs.getString(3) + "<br>");
        out.print("<a href='add.jsp?pid=" + rs.getString(1) +"'>添加到购物车</a>");
        out.print("<hr>");
    }
%>
</body>
</html>
