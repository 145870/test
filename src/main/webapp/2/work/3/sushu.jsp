<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2024-01-03
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
结果为:
<%
    int sushu = Integer.valueOf(request.getParameter("num"));
    for (int i = 2; i < sushu; i++) {
        if (sushu % i == 0) {
            out.print(sushu + "不是素数");
            break;
        }
        if (i == sushu - 1) {
            out.print(sushu + "是素数,"+sushu+"以内的其他素数还有:");
            boolean isPrime;
            for (i = 2; i <= sushu; i++) {
                isPrime = true;
                for (int j = 2; j <= Math.sqrt(i); j++) {
                    if (i % j == 0) {   // 如果能被整除，则不是素数
                        isPrime = false;
                        break;
                    }
                }
                if (isPrime) {
                    out.print(i + " ");
                }
            }
            break;
        }
    }
%>
</body>
</html>
