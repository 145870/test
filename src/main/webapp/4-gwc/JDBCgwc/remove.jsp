<%@ page import="gwc2.ShopCart" %>
<%@ page import="gwc2.ShopCartDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <%
    //从session中获取购物车对象
    ShopCartDB shopCart = (ShopCartDB)session.getAttribute("shopCart");

    //如果session中还没有购物车，则创建购物车
    if(shopCart == null){
      shopCart = new ShopCartDB();
    }
    //读取pid参数
    int pid = Integer.valueOf(request.getParameter("pid"));
    //从购物车中删除
    shopCart.remove(pid);

    //重定向到购物车
    response.sendRedirect("shopcart.jsp");
  %>
</body>
</html>
