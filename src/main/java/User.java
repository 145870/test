import java.util.Date;
public class User {
	private int uid;
	private String name;
	private Date birthday;
	
	public User(int uid, String name, Date birthday) {
		super();
		this.uid = uid;
		this.name = name;
		this.birthday = birthday;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	
}
