<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://www.trkj.com/tr03802/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
	<table border="1">
		<tr>
			<th>id</th>
			<th>产品名</th>
			<th>单价</th>
		</tr>
		<c:forEach items="${list}" var="p">
			<tr>
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.price}</td>
			</tr>
		</c:forEach>
	</table>
	<x:page controller="list" pagesize="2" total="${total}"
		curpage="${param.curpage}" where="${where}" />

</body>
<script>
	function gosel() {
		var url = document.querySelector("#sel").value;
		window.location.href = url;
	}
</script>
</html>