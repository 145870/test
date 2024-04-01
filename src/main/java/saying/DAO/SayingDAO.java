package saying.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.crypto.Cipher;

import enlity.User;
import saying.ent.Saying;
import saying.vo.ChartDCVo;

public class SayingDAO {
	public int doInsert(String name, String txt) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			String sql = "insert into saying(suser,scontent,stime) values(?,?,now())";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setObject(1, name);
			stmt.setObject(2, txt);

			return stmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public Map<String, Object> queryByPage(int curpage, int pagesize) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			String sql = "SELECT * FROM saying ORDER BY sid DESC limit ?,? ";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, (curpage - 1) * pagesize);
			stmt.setInt(2, pagesize);

			ResultSet rs = stmt.executeQuery();
			List<Saying> list = this.map(rs);
			
			Map<String, Object> map=new LinkedHashMap<String, Object>();
			map.put("list",list);
			//计算总的记录数
			sql="select count(*) from saying ";
			stmt=conn.prepareStatement(sql);
			rs=stmt.executeQuery();
			rs.next();
			int total=rs.getInt(1);
			map.put("total", total);

			return map;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public List<Saying> query() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			String sql = "SELECT * FROM saying ORDER BY sid DESC ";
			PreparedStatement stmt = conn.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			List<Saying> list = this.map(rs);
			
			return list;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public int delSById(String id) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			String sql = "delete from saying where sid=? ";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			
			return stmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	private List<Saying> map(ResultSet rs) throws Exception {
		List<Saying> list = new ArrayList<Saying>();
		while (rs.next()) {
			Saying saying = new Saying(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getTimestamp(4));
			list.add(saying);
		}
		return list;
	}
	
	public List<ChartDCVo> chartDC(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8",
					"root", "123456");
			String sql = "SELECT DATE(stime), COUNT(*)\r\n"
					+ "FROM saying\r\n"
					+ "GROUP BY DATE(stime)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			List<ChartDCVo> list = new ArrayList<ChartDCVo>();

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				ChartDCVo chartDCVo=new ChartDCVo(rs.getDate(1),rs.getInt(2));
				list.add(chartDCVo);
			}
			
			return list;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

//	public static void main(String[] args) {
//		SayingDAO dao=new SayingDAO();
//		dao.doInsert("张三", "担心眼睛！");
//		
//	}
}
