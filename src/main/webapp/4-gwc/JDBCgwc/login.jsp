<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录</title>
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
<%
    // 清空session
    session.invalidate();
%>

<h1>登录</h1>
<form action="login_handle.jsp" method="get" onsubmit="return isNull()">
    <p>用户名:<input id="name" name="name"></p>
    <p>密码:<input id="pwd" type="password" name="pwd"></p>
    <p><input value="登录" type="submit"><a href="register.jsp">注册</a></p>
</form>
</body>
</html>