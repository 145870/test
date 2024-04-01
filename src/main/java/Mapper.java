import java.sql.ResultSet;
import java.util.List;

public interface Mapper<E> {
	/**
	 * 将ResultSet 转换成list 需要由子类实现
	 * @param <E>
	 * @param rs
	 * @return
	 */
	public abstract List<E> mapper(ResultSet rs);
}
