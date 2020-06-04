package shop.product.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import shop.product.vo.Product;
import shop.user.vo.User;
import shop.utils.PageHibernateCallback;

//商品持久层的代码

public class ProductDao extends HibernateDaoSupport {

	// 首页上热门商品查询
	public List<Product> findHot() {
		// 使用离线条件查询.
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门的商品,条件就是is_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// 倒序排序输出:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 10);
		return list;
	}

	// 首页上最新商品的查询
	public List<Product> findNew() {
		// 使用离线条件查询:
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 按日期进行倒序排序:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 10);
		return list;
	}
	
	// 根据商品ID查询商品
	public Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class, pid);
	}
	
	

	// 根据分类id查询商品的个数
	public int findCountCid(Integer cid) {
		String hql = "select count(*) from Product p where p.categorySecond.category.cid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,cid);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据分类id查询商品的集合
	public List<Product> findByPageCid(Integer cid, int begin, int limit) {
		// select p.* from category c,categorysecond cs,product p where c.cid = cs.cid and cs.csid = p.csid and c.cid = 2
		// select p from Category c,CategorySecond cs,Product p where c.cid = cs.category.cid and cs.csid = p.categorySecond.csid and c.cid = ?
		String hql = "select p from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
		// 分页另一种写法:
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{cid}, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
		
	}
	
	
	// 根据二级分类查询商品个数
	public int findCountCsid(Integer csid) {
		String hql = "select count(*) from Product p where p.categorySecond.csid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, csid);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据二级分类查询商品信息
	public List<Product> findByPageCsid(Integer csid, int begin, int limit) {
		String hql = "select p from Product p join p.categorySecond cs where cs.csid = ?";
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{csid}, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}

	// 后台统计商品个数的方法
	public int findCount() {
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 后台查询所有商品的方法
	public List<Product> findByPage(int begin, int limit) {
		String hql = "from Product order by pdate desc";
		List<Product> list =  this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, null, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}

	// DAO中的保存商品的方法
	public void save(Product product) {
		this.getHibernateTemplate().save(product);
	}

	// DAO中的删除商品的方法
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}

	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}

	public int findCountProduct(Product product) {
		// TODO Auto-generated method stub
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<Product> search(Product product) {
	// TODO Auto-generated method stub
   
	String hql = "select p from Product p  where pname  like '%"+product.getPname()+"%'";
	List<Product> slist = this.getHibernateTemplate().find(hql);
	if (slist != null && slist.size() > 0) {
		return slist;
	}
     return null;
    }


	// DAO中的搜索商品的方法
//	public Product search(Product product) {
//		// TODO Auto-generated method stub
//	   
//		String hql = "from Product  where pname  like '%"+product.getPname()+"%'";
//		List<Product> plist = this.getHibernateTemplate().find(hql);
//		if (plist != null && plist.size() > 0) {
//			return plist.get(0);
//		}
//	return null;
//	}
	
	}

	





	/*
	 * public Product search(Product product) {
		String hql = "from product  where pname  like '%" + product.getPname() + "%'";

		//as product1 where product1.key like :pname"   
		//where pname like '%' + product1.key + '%' 
		List<Product> plist = this.getHibernateTemplate().find(hql,
				product.getPname());
		if (plist != null && plist.size() > 0) {
			return plist.get(0);
		}
		return null;
	}
	 * 
	public List<User> getUsers(String id){  
	    List list=new ArrayList<User>();  
	    String hql="from User as user where user.id like :id";  
	    factory=DBHelper.getSessionFactory();  
	    Session session=factory.openSession();  
	    Transaction transaction=session.beginTransaction();  
	    Query query=session.createQuery(hql);  
	     query.setString("id", "%"+id+"%");      
	    list=query.list();  
	    transaction.commit();  
	    session.close();  
	    return list;  
	}  
	public List<User> getUsers(String id){  
    List list=new ArrayList<User>();  
    String hql="from User as user where user.id like '%"+id+"%'";  
    factory=DBHelper.getSessionFactory();  
    Session session=factory.openSession();  
    Transaction transaction=session.beginTransaction();  
    Query query=session.createQuery(hql);    
    list=query.list();  
    transaction.commit();  
    session.close();  
    return list;  
}  
	
	
	public Product findBySearch(Product product) {
		// TODO Auto-generated method stub
		String hql="select p from Prouduct as p where p.pid like :pid";
		List<Product> list=this.getHibernateTemplate().find(hql, product.getPid());
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	*/

	//public Product search(String pname) {
		// TODO Auto-generated method stub
		//return this.getHibernateTemplate().get(Product.class, pname);
	//}




