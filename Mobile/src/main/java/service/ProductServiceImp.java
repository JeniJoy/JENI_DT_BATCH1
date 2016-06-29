package service;

import java.util.List;


import bean.Product;
import dao.ProductDao;
import dao.ProductDaoImp;




public class ProductServiceImp implements ProductService {

	

	
	public List<Product> getAllProducts(){
				ProductDao obj=new ProductDaoImp();
				return obj.getAllProducts();

	}
			
}
