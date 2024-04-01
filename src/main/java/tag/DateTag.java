package tag;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class DateTag extends SimpleTagSupport{
	private String pattern;
	
	public String getPattern() {
		return pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	
	@Override
	public void doTag() throws JspException, IOException {
			// 创建一个StringWriter来捕获标签体的输出
			StringWriter sw = new StringWriter();
			String bodyContent;
			try {
				// 将标签体的输出写入StringWriter
				getJspBody().invoke(sw);
				// 获取标签体内容
				bodyContent = sw.toString();
			} catch (Exception e) {
				bodyContent = "";
			}
			
    		Date now=new Date();
    		
    		DateFormat fmtDateFormat=new SimpleDateFormat(this.pattern);
    		String str = fmtDateFormat.format(now);
    		
    		JspWriter out=this.getJspContext().getOut();
    		out.print(bodyContent+str);
	}
}
