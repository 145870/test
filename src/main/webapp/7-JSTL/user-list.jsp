<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<td>序号</td>
		<td>用户名</td>
		<td>密码</td>
		<td>注册时间</td>
		
	</tr>
	<c:forEach items="${list }" var="u" varStatus="vs">
		<tr>
			<td>${u.uid}</td>
			<td>${u.unaem}</td>
			<td>${u.pwd}</td>
			<td> <fmt:formatDate value="${u.zcsj}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
		</tr>
	</c:forEach>
</table>
</body>
</html>