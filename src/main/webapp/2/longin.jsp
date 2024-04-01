<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
    function lan() {
    	document.querySelector("img").src="imag.jsp?" + new Date().getTime();
    }
</script>
</head>
<body>
	<h1>登录</h1>
	<form action="login_ok.jsp" method="post">
		用户名:<input name=name><br/>
		密  码:<input type="password" name="pwd"><br>
		验证码:<input name="yzm"><br>
		<img src="imag.jsp" onclick="lan()"/><br>
		
		<input type="submit" value="登录">
	</form>
</body>
</html>