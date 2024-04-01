package gwc2;

import java.util.ArrayList;
import java.util.List;

/**
 * 仓库
 * @author LiZanhong
 *
 */
public class Store {
	public static List<Commodity> products;
	
	static {
		products = new ArrayList<>();
		products.add(new Commodity(1, "鸡", 20, 110));
		products.add(new Commodity(2, "鸭", 50, 50));
		products.add(new Commodity(3, "牛", 2333, 100));
		products.add(new Commodity(4, "羊", 2200, 110));
		products.add(new Commodity(5, "马", 1111, 10));
		products.add(new Commodity(6, "猴", 1234, 110));
	}
}
