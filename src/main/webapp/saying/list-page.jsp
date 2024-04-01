<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="me" uri="http://www.trkj.com/tr03802/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	table{
		border-collapse:collapse;
		width:400px;
		margin:10px;
	}
	
	table tr td{
	    width:150px;
	    padding:10px;
	}
	
	table tr td:first-child {
	text-align: center;
}
	}
table tr td:nth-child(3) {
    text-align: center;
}
	
</style>

</head>
<body>
<h1>所有留言</h1>
<a href="insert.jsp">去留言</a>
	<c:forEach items="${map.list}" var="s">
		<table border="1" sid='${s.sid}'>
		<tr>
			<td>留言人</td>
			<td>${s.suser }</td>
			<td>时间</td>
			<td><fmt:formatDate value="${s.stime}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td>内容</td>
			<td colspan="3">${s.scontent} </td>
		</tr>
		</table>
	</c:forEach>
	
	<me:page controller="listpage" pagesize="${param.pagesize}" total="${map.total}" curpage="${param.curpage }"/>
</body>

</html>