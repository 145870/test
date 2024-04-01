<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-16
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
    <title>处理</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
%>
  <h2>你的爱好:</h2>
  <c:forEach items="${paramValues.hobbies}" var="h">
      爱好: ${h} <br/>
  </c:forEach>
  <hr>
  提交时间:
  <fmt:formatDate value="<%=new Date()%>" pattern="yyyy-MM-dd"/>
</body>
</html>
