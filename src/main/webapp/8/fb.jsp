<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="x" uri="http://www.trkj.com/tr03802/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		List list=List.of("xxx","yuyyy","sdadw");
		request.setAttribute("list", list);
	%>
	${x:size(list)}
</body>
</html>