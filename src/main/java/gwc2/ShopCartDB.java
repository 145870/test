package gwc2;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
//购物车
public class ShopCartDB extends ShopCart{
	
	//从仓库中根据id读取到对应的商品
	protected Commodity getProduct(int pid) {
		try {
			String sql ="select * from Commodity where c_id=?";
			//加载数据库驱动 
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web_gwc?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT%2B8", "root", "123456");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setObject(1, pid);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()){
				Commodity p = new Commodity();
				p.setId(rs.getInt(1));
				p.setName(rs.getString(2));
				p.setCount(1);
				p.setPrice(rs.getDouble(3));
				return p;
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	

}

