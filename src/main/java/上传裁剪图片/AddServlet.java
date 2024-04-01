package 上传裁剪图片;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Base64;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/上传裁剪图片/add")
@MultipartConfig
public class AddServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String base64Image = req.getParameter("croppedImage").split(",")[1]; // 移除"data:image/png;base64,"部分

		// 使用java.util.Base64解码
	    byte[] imageBytes = Base64.getDecoder().decode(base64Image);

	    // 将字节写入文件
	    try (OutputStream out = new FileOutputStream("F:/123.jpg")) {
	        out.write(imageBytes);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
}
