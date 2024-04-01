<%@page import="gwc2.ShopCartDB"%>
<%@ page import="gwc2.ShopCart" %>
<%@ page import="gwc2.Commodity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>购物车</h1>
<table border="1">
  <tr>
    <th>商品名称</th>
    <th>单价</th>
    <th>数量</th>
    <th>小计</th>
    <th>操作</th>
  </tr>
  <%
    //从session中获取购物车对象
    ShopCartDB shopCart = (ShopCartDB)session.getAttribute("shopCart");
    //如果session中还没有购物车，则创建购物车
    if(shopCart == null){
      shopCart = new ShopCartDB();
    }
    //总计
    double total = 0;
    //从购物车中获取所有购买的商品
    List<Commodity> list = shopCart.getAll();
    //循环遍历并显示
    for(Commodity p: list){
      total += p.getTotal();
  %>
  <script>
    function update(e,pid){
        var val=e.value;
        alert(val)
        location = "update.jsp?pid="+pid+"&count="+val;
    }
  </script>
  <tr>
    <td><%= p.getName() %></td>
    <td>￥<%= p.getPrice() %></td>
    <td><input onblur="update(this, <%= p.getId() %>)" type="number" min="1" value="<%= p.getCount() %>"></td>    <td>￥<%= p.getTotal() %></td>
    <td><a href="javascript:if(confirm('您真的要删除吗？')) location='remove.jsp?pid=<%= p.getId() %>';">删除</a></td>
  </tr>
  <%
    }
  %>
</table>

<div>总计：￥<%= total %></div>
<div>
  <a href="javascript:if(confirm('您真的要清空购物车吗？')) location='clear.jsp';">清空</a>
  <a href="home.jsp">继续购买</a>
</div>
</body>
</html>
