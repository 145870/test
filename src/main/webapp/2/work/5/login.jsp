<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-03
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script>
        $(function () {
            $("input[type='submit']").click(function (event) {
                var name = $("input[name='name']").val();
                var pwd = $("input[name='pwd']").val();
                if (name.trim() === "" || pwd.trim() === "") {
                    alert("用户名或密码不能为空");
                    event.preventDefault();
                }
            });
        });
    </script>
</head>
<body>
<form action="login_ok.jsp" method="post">
    用户名:<input name="name"> <br>
    密&nbsp;&nbsp;&nbsp;码:<input type="password" name="pwd"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>