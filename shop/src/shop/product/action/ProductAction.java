package shop.product.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import shop.category.service.CategoryService;
import shop.product.service.ProductService;
import shop.product.vo.Product;
import shop.user.vo.User;
import shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

// 商品的Action对象

public class ProductAction extends ActionSupport implements
		ModelDriven<Product> {
	// 用于接收数据的模型驱动.
	private Product product = new Product();
	// 注入商品的Service
	private ProductService productService;
	// 接收分类cid
	private Integer cid;
	// 接收二级分类id
	private Integer csid;



	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	// 注入一级分类的Service
	private CategoryService categoryService;
	// 接收当前页数:
	private int page;

	public void setPage(int page) {
		this.page = page;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getCid() {
		return cid;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Product getModel() {
		return product;
	}

	// 根据商品的ID进行查询商品:执行方法:
	public String findByPid() {
		// 调用Service的方法完成查询.
		product = productService.findByPid(product.getPid());
		return "findByPid";
	}
	
//	//根据导航栏搜索商品
//	public String search() {
//		// 调用Service的方法完成搜索.
//			Product product1= productService.search(product);//存进去的只有搜索的Pname的商品
//		
//			// 判断
//			if (product1 == null) {
//				// 搜索失败
//				return "searcherror";
//			} else {
//				// 搜索成功
//				// 将商品的信息存入到session中
//				ServletActionContext.getRequest().getSession()
//						.setAttribute("product1", product1);
//				// 页面跳转
//				 return "searchSuccess";
//			}
//	}
	
	public String search() {
		// 调用Service的方法完成搜索.
		List<Product> slist = productService.search(product);//存进去的只有搜索的Pname的商品
		ServletActionContext.getRequest().getSession().setAttribute("slist", slist);
		ActionContext.getContext().getValueStack().set("slist", slist);
		 return "searchSuccess";

	}



	// 根据分类的id查询商品:
	public String findByCid() {
		// List<Category> cList = categoryService.findAll();
		PageBean<Product> pageBean = productService.findByPageCid(cid, page);// 根据一级分类查询商品,带分页查询
		// 将PageBean存入到值栈中:
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}

	// 根据二级分类id查询商品:
	public String findByCsid() {
		// 根据二级分类查询商品
		PageBean<Product> pageBean = productService.findByPageCsid(csid, page);
		// 将PageBean存入到值栈中:
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCsid";
	}
}
