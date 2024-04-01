<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功，留言</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    if (session.getAttribute("userName")== null) {
        out.print("用户未登录请:<a href='login.jsp'>登录</a>");
    } else {
        out.print("<h1>欢迎登录," + session.getAttribute("userName")+ "</h1>");
        out.print("<h4>选择你的操作</h4>");

        out.print("<a href='mess.jsp'>我要留言!</a><br>");
        out.print("<a href='myly.jsp'>我要查看我的留言!</a><br>");
        out.print("<a href='allly.jsp'>我要查看全平台留言!</a><br>");
        out.print("我要 <a href='login.jsp'>注销/重新登录</a><br>");

    }
%>
</body>
</html>