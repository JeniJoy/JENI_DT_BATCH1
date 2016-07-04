package com.memo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.memo.bean.Product;
import com.memo.dao.ProductDao;
import com.memo.dao.ProductDaoImp;


@Service("productServiceImp")
@Transactional(propagation=Propagation.SUPPORTS, readOnly=true)

public class ProductServiceImp implements ProductService {

	@Autowired
	private ProductDao productDaoImp;

	
	public List<Product> getAllProducts(){
				ProductDao obj=new ProductDaoImp();
				return obj.getAllProducts();

	}
	@Override
	@Transactional(propagation=Propagation.SUPPORTS, readOnly=false)

	public void addProduct(Product productBean) {
		// TODO Auto-generated method stub
		productDaoImp.addProduct(productBean);
	}
 
			
}
