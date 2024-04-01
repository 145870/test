<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理数据</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String pwd=request.getParameter("pwd");

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/web_gwc?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
        String sql="select * from users where u_name=? and u_pwd=?";
        PreparedStatement stmt=conn.prepareStatement(sql);
        stmt.setString(1,name);
        stmt.setString(2,pwd);
        ResultSet rs=stmt.executeQuery();
        if(rs.next()){
            session.setAttribute("userName",name);
            session.setAttribute("userID",rs.getInt(1));
            //跳转
            response.sendRedirect("home.jsp");
        }else{
            out.print("<h1>账号或密码错误</h1>");
            out.print("重新登录 请点击 <a href='login.jsp'>登录</a><br>");
        }
        conn.close();
        stmt.close();
    %>
</body>
</html>
