package user_;

public class User {
	private int uid;
	private String uname;
	private String upwd;
	private String uphone;
	private String uaddress;
	private String uavatar;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int uid, String uname, String upwd, String uphone, String uaddress, String uavatar) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.uavatar = uavatar;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpwd() {
		return upwd;
	}
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	public String getUavatar() {
		return uavatar;
	}
	public void setUavatar(String uavatar) {
		this.uavatar = uavatar;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", uphone=" + uphone + ", uaddress="
				+ uaddress + ", uavatar=" + uavatar + "]";
	}
	
}
