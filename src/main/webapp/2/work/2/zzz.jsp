<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中转</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String xz = request.getParameter("xz");

    String tz="";
    switch (xz) {
        case "白羊座":
            tz="白羊座.jsp";
            break;
        case "金牛座":
            tz="金牛座.jsp";
            break;
        case "双子座":
            tz="双子座.jsp";
            break;
        case "巨蟹座":
            tz="巨蟹座.jsp";
            break;
        case "狮子座":
            tz="狮子座.jsp";
            break;
        case "处女座":
            tz="处女座.jsp";
            break;
        case "天秤座":
            tz="天秤座.jsp";
            break;
        case "天蝎座":
            tz="天蝎座.jsp";
            break;
        case "射手座":
            tz="射手座.jsp";
            break;
        case "摩羯座":
            tz="摩羯座.jsp";
            break;
        case "水瓶座":
            tz="水瓶座.jsp";
            break;
        case "双鱼座":
            tz="双鱼座.jsp";
            break;
    }
    request.getRequestDispatcher(tz).forward(request,response);
%>

</body>
</html>
