<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="../call" method="post">
	<input name="a" type="number" value=${a}>
	<select name="o">
		<option value="+" ${o eq '+' ? 'selected' : ''}>+</option>
		<option value="-" ${o eq '-' ? 'selected' : ''}>-</option>
		<option value="*" ${o eq '*' ? 'selected' : ''}>*</option>
		<option value="/" ${o eq '/' ? 'selected' : ''}>/</option>
		<option value="%" ${o eq '%' ? 'selected' : ''}>%</option>
	</select>
	<input name="b" type="number" value=${b}>
	<input type="submit" value="=">
</form>
<div>${r}</div>
</body>
</html>