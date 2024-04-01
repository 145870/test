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
  //清空购物车
  shopCart.clear();

  //重定向到购物车
  response.sendRedirect("shopcart.jsp");
%>
</body>
</html>
