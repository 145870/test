<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登陆处理请求</title>
</head>
<body>

	<%
	//处理乱码
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String pas=request.getParameter("pwd");
		out.print(name+"<br/>");
		out.print(pas+"<br>");
		
		String user=request.getParameter("yzm");
		String co=session.getAttribute("code")+"";
		if(user.equals(co)){
			out.print("验证码正确");
		}else{
			out.print("验证码错误");
		}
	%>
</body>
</html>