package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import enlity.User;

public class UsersDAO {
	public List<User> queryAll(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/tr03802web?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8","root","123456");
	        String sql="select * from users";
	        PreparedStatement stmt=conn.prepareStatement(sql);
	        ResultSet rs=stmt.executeQuery();
	        List<User> list=new ArrayList<User>();
	        
	        while(rs.next()) {
	        	User u=new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getTimestamp(4));
	        	list.add(u);
	        }
	        stmt.close();
	        rs.close();
	        conn.close();
	        return list;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return null;
	}
}
