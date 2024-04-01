package user_;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import News.util.Mapper;

public class UserDAO extends BaseDAO{
	public boolean isExists(String phone,String pwd) {
		String sql="select * from user_ where uphone=? and upwd=? ";
		List<User> list=this.executeQuery(sql, new Mapper<User>() {

			@Override
			public List<User> mapper(ResultSet rs) throws SQLException {
				if (rs.next()) {
					return new ArrayList<User>();
				}
				return null;

			}
			
		}, phone,pwd);
		
		return list!=null;
	}
	
	public boolean insert(String name,String pwd,String phone,String uaddress,String uavatar) {
		String sql="INSERT INTO user_(uname,upwd,uphone,uaddress,uavatar) VALUES(?,?,?,?,?)";
		return this.execute(sql, name,pwd,phone,uaddress,uavatar)>0;
	}
	
	public User selectByPhone(String phone){
		String sql="select * from user_ where uphone=?";
		List<User> list=this.executeQuery(sql, new Mapper<User>() {

			@Override
			public List<User> mapper(ResultSet rs) throws SQLException {
				List<User> list=new ArrayList<User>();
				while(rs.next()) {
					list.add(new User(
								rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6)
							));
				}
				return list;
			}
			
		}, phone);
		if (list.size()>0) {
			return list.get(0);
		}
		return null;
	}
	public List<User> getAllUser(){
		String sql="select * from user_ ";
		List<User> list=this.executeQuery(sql, new Mapper<User>() {

			@Override
			public List<User> mapper(ResultSet rs) throws SQLException {
				List<User> list=new ArrayList<User>();
				while(rs.next()) {
					list.add(new User(
								rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6)
							));
				}
				return list;
			}
			
		});
		if (list.size()>0) {
			return list;
		}
		return null;
	}
	
	public int delById(String id) {
		String sql="delete from user_ where uid=?";
		return execute(sql, id);
	}
	public static void main(String[] args) {
		UserDAO b=new UserDAO();
		System.out.println(b.isExists("110", "admin"));
		//System.out.println(b.insert("1231", "1231", "1231", "123", null));
		System.out.println(b.selectByPhone("12"));
	}

}
