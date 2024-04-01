package saying.vo;

import java.util.Date;

public class ChartDCVo {
	private Date date;
	private int count;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public ChartDCVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChartDCVo(Date date, int count) {
		super();
		this.date = date;
		this.count = count;
	}
	
}
