package gwc;
import java.util.Objects;

/**
 * 商品
 * 
 * @author LiZanhong
 *
 */
public class Product {
	private int pid;
	private String name; // 名称
	private double price; // 单价
	private int count; // 数量
	private double total; // 总价

	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int pid, String name, double price, int count) {
		super();
		this.pid = pid;
		this.name = name;
		this.price = price;
		this.count = count;
	}


	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}