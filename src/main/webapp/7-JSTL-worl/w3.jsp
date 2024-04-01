<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-16
  Time: 13:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>学生信息</h1>
<table border="1">
  <tr>
    <td>姓名</td>
    <td>班级</td>
    <td>年龄</td>
    <td>成绩</td>
  </tr>
  <c:forEach items="${list}" var="l">
    <tr>
      <td>${l.name}</td>
      <td>${l.clazz}</td>
      <td>${l.age}</td>
      <td style="color: ${l.score<60?'red':'black'}">${l.score}</td>
    </tr>
  </c:forEach>

</table>
<br>
<c:set value="${fn:length(list)}" var="len"></c:set>
${len}
<%--平均年龄:${}<br>--%>
<%--平均成绩:${}<br>--%>
</body>
</html>
