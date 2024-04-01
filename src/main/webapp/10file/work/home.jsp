<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img{
		width:40px;
		height:40px;
	
	}
</style>
</head>
<body>

	<img src="../../images/${user.uavatar}"><br>
	<p>名称:${user.uname}</p>
	<p>手机号:${user.uphone}</p>
	<p>地址:${user.uaddress}</p>
</body>
</html>