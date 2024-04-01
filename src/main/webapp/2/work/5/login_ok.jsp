<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-03
  Time: 19:47
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
    String userName=request.getParameter("name");
    String userPwd=request.getParameter("pwd");
    if(!userName.startsWith("trkj")){
        //登录失败
        response.sendRedirect("login_no.jsp");
    }
%>
<h1>登录成功！！！</h1>
用户:<%=request.getParameter("name") %><br>
密码:<%=request.getParameter("pwd") %><br>

</body>
</html>
