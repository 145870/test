<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
        .b {
            margin: 10px;
            
        }
        .c {
            height: 25px;
            background: red;
            display: inline-block;
        }
    </style>
</head>
<body>
    <h1>图表统计</h1>
    <c:forEach items="${chartdc}" var="a">
        <div class='b'>
            ${a.date}
            <div style="width:${400*a.count/total}px" class="c">
            </div>
            ${a.count}
        </div>
    </c:forEach>
</body>
</html>