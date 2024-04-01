<%@page import="java.util.Random"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	Random ran=new Random();
	public Color ranColor(){
		return new Color(ran.nextInt(256),ran.nextInt(256),ran.nextInt(256));
	}
	public String ranString(){
		int x=ran.nextInt(3);
		char letter='0';
		if(x==0){
			return (char) (0x4e00 + (int) (Math.random() * (0x9fa5 - 0x4e00 + 1)))+"";
		}else{
			return ran.nextInt(10)+"";
		}
	}
	
	public String ranCode(){
		String c="";
		for(int i=0;i<4;i++){
			c+=ranString();
		}
		return c;
	}
%>
<%

	//响应类型为图片
	response.setContentType("image/png");
	//创建一个空白图片
	BufferedImage image = new BufferedImage(50, 20,BufferedImage.TYPE_INT_BGR);
	
	//获得画笔
	Graphics g = image.getGraphics();
	g.setColor(new java.awt.Color(240, 240, 240));
	g.fillRect(0, 0, 50, 20);
	
	// 将验证码保存到 session 中
	String code=ranCode();
    session.setAttribute("code", code);
	//绘制验证码
	char c[]=code.toCharArray();
	int x=3;
	for(char i:c){
		g.setColor(ranColor());
		g.drawString(i + "", x, ran.nextInt(10)+10);
	    x += 10; // 每个字符之间的间距
	}
	
	
	// 生成干扰线
    //for (int i = 0; i < 5; i++) {
        //g.setColor(ranColor());
        //g.drawLine(ran.nextInt(50), ran.nextInt(20), ran.nextInt(50), ran.nextInt(20));
   // }
	
	//通过输出流输出到浏览器
	ImageIO.write(image, "png", response.getOutputStream());
	//关闭资源
	g.dispose();
	out.clear();
	//防止jsp出错
	out = pageContext.pushBody();
%>
</body>
</html>