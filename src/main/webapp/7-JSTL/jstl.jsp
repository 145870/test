<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1<c:out value="2">3</c:out>4
	
	<c:if test="${param.age<0}" var="v">你是出生</c:if>
	<c:if test="${not v}">你是人</c:if>
	
	<c:choose>
		<c:when test="${param.age<=12}">你是儿童</c:when>
		<c:when test="${param.age<=18}">你是少年</c:when>
		<c:when test="${param.age>=60&&param.age<80}">你是老登</c:when>
		<c:otherwise>你是老不死</c:otherwise>
	</c:choose>
	
	<div>
		<c:forEach begin="1" end="10" var="x" step="1">
			${x}
		</c:forEach>
		
		<% 
			List<String> list = new ArrayList();
			list.add("张三");
			list.add("张s");
			list.add("张w");
			pageContext.setAttribute("list",list);
		%>
		<c:forEach items="${ list }" var="cur" varStatus="vs">
			${cur}/${vs.index }/${vs.count }<br>
		</c:forEach>
	</div>
	
	<div>
		<c:forTokens items="abcd,ef,df,sds,s" delims="," var="v">
			${v }
		</c:forTokens>
	</div>
	
	<div>
		<c:url var="u" value="http://www.4399.com">
			<c:param name="id" value="4"></c:param>
			<c:param name="name" value="12"></c:param>
			
		</c:url>
		${u}
	</div>
	
	<div>
		<c:redirect url="http://www.baidu.com">
		</c:redirect>
	</div>
</body>
</html>