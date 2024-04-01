<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="x" uri="http://www.trkj.com/tr03802/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<x:date pattern="HH:mm:ss">当前时间:</x:date>

	<x:repeat cnt="1">蔡徐坤</x:repeat>

	<div>
		<%
		List list = new ArrayList();
		list.add("xxx");
		list.add("yyy");
		list.add("zzz");
		pageContext.setAttribute("list", list);
		%>
		<x:iterator item="cur" collection="${list}">
			<div style="color: red">${cur}</div>
		</x:iterator>
	</div>
</body>
</html>