package gwc;

import java.util.ArrayList;
import java.util.List;

public class ListDemo {
	public static void main(String[] args) {
		List<Integer> list = new ArrayList<>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.remove(new Integer(2));
		list.clear();
		for(Integer l: list) {
			System.out.println(l);
		}
	}
}
