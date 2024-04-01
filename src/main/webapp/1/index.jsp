
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="java.util.Date,java.lang.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%= new Date().toLocaleString() %>
	<hr>
	你好
	<%!
		private int x=100;
		public int mul(int a,int b){
			return a*b;
		}
	%>
	
	<%
	int a=10;
	int b=3;
	int x=10-3;
	out.println(x);//输出到浏览器
	System.out.println(x);//输出到控制台
	%>
	<%= mul(10, 10) %>
</body>
</html>