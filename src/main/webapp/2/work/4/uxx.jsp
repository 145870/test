<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-03
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
你的用户名:
<%=request.getParameter("name")%>
<br>
你的密码:
<%=request.getParameter("pas")%>
<br>
你的性别:
<%=request.getParameter("xb")%>
<br>
你的爱好:
<%
    for(String h:request.getParameterValues("hobby")){
        out.print(h+" ");
    }
%>
<br>
你的学历:
<%=request.getParameter("education")%>
<br>
你的介绍:
<%=request.getParameter("zwjs")%>
</body>
</html>
