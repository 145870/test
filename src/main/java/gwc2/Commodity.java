package gwc2;

public class Commodity {
    private int cid;
    private String name; // 名称
    private double price; // 单价
    private int count; // 数量
    private double total; // 总价

    @Override
	public String toString() {
		return "Commodity [cid=" + cid + ", name=" + name + ", price=" + price + ", count=" + count + ", total=" + total
				+ "]";
	}
    
    

	public Commodity(int cid, String name, double price) {
		super();
		this.cid = cid;
		this.name = name;
		this.price = price;
	}



	public Commodity() {
    }

    public Commodity(int id, String name, double price, int count, double total) {
        this.cid = id;
        this.name = name;
        this.price = price;
        this.count = count;
        this.total = total;
    }

    public Commodity(int id, String name, double price, int count) {
        this.cid = id;
        this.name = name;
        this.price = price;
        this.count = count;
    }

    public int getId() {
        return cid;
    }

    public void setId(int id) {
        this.cid = id;
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
