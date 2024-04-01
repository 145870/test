package saying.ent;

import java.util.Date;

public class Saying {
	private int sid;
	private String suser;
	private String scontent;
	private Date stime;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSuser() {
		return suser;
	}
	public void setSuser(String suser) {
		this.suser = suser;
	}
	public String getScontent() {
		return scontent;
	}
	public void setScontent(String scontent) {
		this.scontent = scontent;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	public Saying() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Saying(int sid, String suser, String scontent, Date stime) {
		super();
		this.sid = sid;
		this.suser = suser;
		this.scontent = scontent;
		this.stime = stime;
	}
	
}
