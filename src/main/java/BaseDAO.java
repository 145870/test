import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

public abstract class BaseDAO {
	/*
	 * 获取连接对象
	 * */
	public Connection getConn() {
		try {
			Class.forName("");
			Connection conn=DriverManager.getConnection(null);
			return conn;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void close(ResultSet rs,Statement stmt,Connection conn) {
		try {
			if(rs!=null) {
				rs.close();
			}
			if(stmt!=null) {
				stmt.close();
			}
			if(conn!=null) {
				conn.close();
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	/**
	 * @param stmt
	 * @param params
	 */
	public void bindParameters(PreparedStatement stmt,Object...params) {
		if (params!=null) {
			for(int i=0;i<params.length;i++) {
				try {
					stmt.setObject(i+1, params[i]);
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	public int update(String sql,Object...params) {
		Connection conn=getConn();
		try {
			PreparedStatement stmt=conn.prepareStatement(sql);
			this.bindParameters(stmt, params);
			int v=stmt.executeUpdate();
			this.close(null, stmt, conn);
			return v;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public <E> List<E> query(String sql,Mapper<E> mapper,Object...params){
		try {
			Connection conn=getConn();
			PreparedStatement stmt=conn.prepareStatement(sql);
			this.bindParameters(stmt, params);
			ResultSet rs=stmt.executeQuery();
			List<E> list=mapper.mapper(rs);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return null;
		
	}
}
