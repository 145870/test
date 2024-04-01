<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
 	function isNull(){
 		var name = document.querySelector("#name").value;
        var pwd =  document.querySelector("#pwd").value;
        if (name.trim() === "" || pwd.trim() === "") {
            alert("用户名或密码不能为空");
            return false;
        }
        return true;
 	}
 </script>
</head>
<body>
	<h1>登录</h1>
	<form action="login_ok.jsp" method="post" onsubmit="return isNull()">
	<p>用户名:<input id="name" name="name"></p>
	<p>密码:<input id="pwd" type="password" name="pwd"></p>
	<p><input value="登录" type="submit" ></p>
	<p>没有账号?点击<a href="zhuce.jsp">注册</a></p>
	</form>
</body>
</html>