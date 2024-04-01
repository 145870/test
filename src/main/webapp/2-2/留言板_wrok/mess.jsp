<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  request.setCharacterEncoding("utf-8");
  //用户是否登录
  if (session.getAttribute("userName")== null) {
    out.print("用户未登录请:<a href='login.jsp'>登录</a>");
  } else {
      // 留言板页面的代码
     out.print("<h1>请留言:</h1>");
     out.print("<form action='mess_ok.jsp' method='post'>");
     out.print("<textarea name='m_text' rows='5' cols='30'></textarea>");
     out.print("<input type='submit' value='提交'><br>");
     out.print("</form><br><hr>");
  }
%>
返回<a href="home.jsp">首页</a>
</body>
</html>
