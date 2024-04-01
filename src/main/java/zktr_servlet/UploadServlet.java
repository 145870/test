package zktr_servlet;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/10file/img")
@MultipartConfig
public class UploadServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part=req.getPart("img");
		//文件名
		String cp = part.getHeader("content-disposition");
		String fileName = cp.split(";")[2].split("=")[1].replaceAll("\"", "");
		//扩展名
		int pos=fileName.lastIndexOf('.');
		String endName=fileName.substring(pos);
		
		//生成随机文件名
		String rndName=UUID.randomUUID().toString().toUpperCase();
		
		//获取发布后的工程目录
		String root=this.getServletContext().getRealPath("");
		System.out.println(root);
		
		//创建image子文件夹
		File images = new File(root, "images");
		if (!images.exists()) {
		    images.mkdirs();
		}
		String photo = root + "images" + File.separator + rndName + endName;
		System.out.println(photo);
		part.write(photo);
		
		
		req.setAttribute("photo", rndName + endName);
		req.getRequestDispatcher("file.jsp").forward(req, resp);
	}
}
