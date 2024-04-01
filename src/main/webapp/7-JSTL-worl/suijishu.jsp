<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="randomNumber" value="<%=(int)(Math.random()*100)%>" />

<c:choose>
    <c:when test="${randomNumber%4==0}">三等奖</c:when>
    <c:when test="${randomNumber%6==0}">二等奖</c:when>
    <c:when test="${randomNumber%8==0}">一等奖</c:when>
    <c:otherwise>谢谢惠顾</c:otherwise>
</c:choose>
<br>
<hr>
<h3>随机号码:${randomNumber}</h3>
<a href="suijishu.jsp">继续</a>
</body>
</html>

