<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-16
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>请选择您的个人爱好：</h1>
<form action="w2-2.jsp" method="post">
  <label><input type="checkbox" name="hobbies" value="篮球">篮球</label><br>
  <label><input type="checkbox" name="hobbies" value="足球">足球</label><br>
  <label><input type="checkbox" name="hobbies" value="游泳">游泳</label><br>
  <label><input type="checkbox" name="hobbies" value="音乐">音乐</label><br>
  <label><input type="checkbox" name="hobbies" value="旅游">旅游</label><br>
  <input type="submit" value="提交">
</form>
</body>
</html>
