package enlity;

import java.sql.Date;
import java.sql.Timestamp;

public class User {
	private int uid;
	private String unaem;
	private String pwd;
	private Timestamp zcsj;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUnaem() {
		return unaem;
	}
	public void setUnaem(String unaem) {
		this.unaem = unaem;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Timestamp getZcsj() {
		return zcsj;
	}
	public void setZcsj(Timestamp zcsj) {
		this.zcsj = zcsj;
	}
	public User(int uid, String unaem, String pwd, Timestamp zcsj) {
		super();
		this.uid = uid;
		this.unaem = unaem;
		this.pwd = pwd;
		this.zcsj = zcsj;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
