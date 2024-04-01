package saying.DAO;

public class SayingsDAO extends BaseDAO{
	public int save(String user,String txt) {
		String sql = "insert into saying(suser,scontent,stime) values(?,?,now())";
		return this.update(sql, user,txt);
	}
	public static void main(String[] args) {
		SayingsDAO s=new SayingsDAO();
		s.save("张思","xsahdiwq");
		System.err.println(1);
	}
}
