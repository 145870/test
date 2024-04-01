package gwc2;

import java.util.ArrayList;
import java.util.List;
//购物车
public class ShopCart {
    private List<Commodity> list = new ArrayList();
    //是否存在商品
    public Commodity isExistence(int pid) {
        for(Commodity c:list){
            if(c.getId()==pid){
                return c;
            }
        }
        return null;
    }
    //从仓库中根据id读取到对应的商品
    protected Commodity getProduct(int id) {
        for(Commodity c: Store.products) {
            if(c.getId() == id) {
                return c;
            }
        }
        return null;
    }

    //购物车内新增商品
    public void addCommodity(int id){
        Commodity isMy = isExistence(id);
        Commodity isCk = getProduct(id);
        //如果不存在
        if (isMy==null){
            //商品不存在，则新增商品
            Commodity np = new Commodity();//创建新商品
            np.setId(isCk.getId());
            np.setName(isCk.getName());
            np.setCount(1);
            np.setPrice(isCk.getPrice());
            np.setTotal(np.getPrice() * np.getCount());
            this.list.add(np);
        }else {
            //修改数量
            isMy.setCount(isMy.getCount()+1);
            isMy.setTotal(isMy.getCount()*isMy.getPrice());
        }
    }
    //删除购物车
    public void remove(int cid){
        for(Commodity c:list){
            if(c.getId()==cid){
                this.list.remove(c);
                break;
            }
        }
    }

    //清空购物车
    public void clear(){
        this.list.clear();
    }
    public List<Commodity> getAll(){
        return this.list;
    }
    public void update(int pid,int count){
        Commodity c=isExistence(pid);
        if (c!=null){
            c.setCount(count);
            c.setTotal(c.getCount()*c.getPrice());
        }


    }

}
