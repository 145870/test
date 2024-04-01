package News;

import java.util.List;

import News.DAO.NewsDAO;
import News.ent.News;

public class test {
	public static void main(String[] args) {
		NewsDAO dao=new NewsDAO();
		//dao.doInsert("名字5", "不知道来源");
		List<News> list=(List<News>) dao.queryByPage(2,3).get("list");
//		for(News n:list) {
//			System.out.println(n);
//		}
		List<News> list2=dao.getAllNews();
//		for(News n:list2) {
//			System.out.println(n);
//		}
		dao.doDeleteMo();
	}
}
