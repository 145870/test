<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Date now=new Date();
		request.setAttribute("now", now);
	%>
	<fmt:formatDate value="${now }" pattern="yyyy年MM月dd日 HH时mm分ss秒"/>
</body>
</html>  