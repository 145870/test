package News.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;

import News.ent.News;
import News.util.Mapper;
import user_.BaseDAO;

public class NewsDAO extends BaseDAO{
	public int doInsert(String tit,String nsource) {
		String sql="insert into news(ntit,nsource,ptime) values(?,?,now())";
		return this.execute(sql, tit,nsource);
	}
	
	public Map<String, Object> queryByPage(int curpage,int pagesize){
		String sql = "select * from news order by nid desc limit ?,?";
		List<News> list = this.executeQuery(sql, new Mapper<News>() {

			@Override
			public List<News> mapper(ResultSet rs) {
				List<News> list = new ArrayList<News>();
				try {
					while(rs.next()) {
						News s = new News(
								rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getTimestamp(4));
						list.add(s);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return list;
			}
			
		}, (curpage - 1 ) * pagesize,pagesize);
		
		String sql2 = "select count(*) c from news";
		Object obj = this.singleObject(sql2);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("total", obj);
		return map;
	}
	
	
	public List<News> getAllNews(){
		String sql="SELECT * FROM news";
		return this.executeQuery(sql, new Mapper<News>() {

			@Override
			public List<News> mapper(ResultSet rs) throws SQLException {
				List<News> list=new ArrayList<News>();
				while(rs.next()) {
					News s = new News(
							rs.getInt(1),
							rs.getString(2),
							rs.getString(3),
							rs.getTimestamp(4));
					list.add(s);
				}
				return list;
			}
			
		});
	}
	public static void main(String[] args) {
		NewsDAO n=new NewsDAO();
		List<News> list=n.getAllNews();
		System.out.println(JSONArray.toJSONString(list));
		System.err.println(JSONObject.toJSONString(list.get(0)));
	}
	
	public int doDeleteMo() {
		String sql="DELETE FROM news "
				+ "WHERE ptime < DATE_SUB(NOW(), INTERVAL 1 MONTH)";
		return execute(sql);
	}
}
