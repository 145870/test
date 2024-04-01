package tag;

import java.io.IOException;
import java.io.StringWriter;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class RepeatTag extends SimpleTagSupport{
	private int cnt=1;
	
	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public void doTag() throws JspException, IOException {
		StringWriter sw=new StringWriter();
		getJspBody().invoke(sw);
		String s=sw.toString();
		
		String result = "";
		for(int i=0;i<this.cnt;i++) {
			result+=s;
		}
		
		
		this.getJspContext().getOut().print(result);
	}
	
	

}
