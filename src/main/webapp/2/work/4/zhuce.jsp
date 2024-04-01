
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="uxx.jsp" method="post">
  用户名:<input name="name"><br>
  密码:<input name="pas" type="password"><br>
  性别:<input name="xb" type="radio" value="男">男
  <input name="xb" type="radio" value="女">女
  <input name="xb" type="radio" value="未知">未知
  <br>
  爱好:
  <input name="hobby" type="checkbox" value="运动">运动
  <input name="hobby" type="checkbox" value="音乐">音乐
  <input name="hobby" type="checkbox" value="上网">上网
  <input name="hobby" type="checkbox" value="购物">购物
  <input name="hobby" type="checkbox" value="旅游">旅游
  <br>
  学历:<select name="education">
  <option value="小学">小学</option>
  <option value="初中">初中</option>
  <option value="高中">高中</option>
  <option value="大学">大学</option>
</select>
  <br>
  自我介绍:<br>
  <textarea name="zwjs" rows="5"></textarea>
  <br>
  <input type="submit" value="提交">
</form>
</body>
</html>
