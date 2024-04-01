<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>用户注册</h1>
 <form action="reg" method="post" enctype="multipart/form-data">
	<p>名称:<input name="name"></p>
 	<p>手机号:<input name="phone"></p>
 	<p>密码:<input type="password" name="pwd"></p>
 	<p>地址:<input name="address"></p>
 	<p>头像:<input type="file" name="avatar"></p>
 	<p><input type="submit" value="注册"> <a href="login.jsp">登陆</a></p>
 </form>
</body>
</html>