package zktr_servlet;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.Buffer;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.ServletSecurity;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.JoinRowSet;

@WebServlet(value = "/image")
public class ImageServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1,读取图片
		//获取工程的路径
		ServletContext application=this.getServletContext();
		String img=application.getRealPath("/imgs/ji.png");
		System.out.println(img);
		
		//将图片加载到内存
		Image image = ImageIO.read(new File(img));
		//获取宽度和高度
		int width = image.getWidth(null);
		int height = image.getHeight(null);
		System.out.println(width);
		System.out.println(height);
		
		//2,在图片上加水印
		BufferedImage buf = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//获得画笔
		Graphics g = buf.getGraphics();
		g.drawImage(image, 0, 0, width,height,null);
		
		//获得文字
		req.setCharacterEncoding("utf-8");
		String txt=req.getParameter("txt");
		
		g.setColor(Color.yellow);
		g.drawString(txt, width-50, height-20);
		
		//3,将带水印的图片显示到浏览器
		resp.setContentType("image/png");
		ImageIO.write(buf, "png", resp.getOutputStream());
		//关闭资源
		g.dispose();
	}
}
