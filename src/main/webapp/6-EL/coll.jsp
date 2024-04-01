<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
	List<String> list=new ArrayList();
	list.add("中国");
	list.add("美国");
	list.add("德国");
	request.setAttribute("list", list);
%>
z
${list[1]}
</body>
</html>