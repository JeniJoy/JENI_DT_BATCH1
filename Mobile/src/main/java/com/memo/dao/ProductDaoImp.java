package com.memo.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.memo.bean.Product;


@Repository("productDaoImp")
public class ProductDaoImp implements ProductDao {
	
	@Autowired SessionFactory sessionFactory;
	
	public List<Product> getAllProducts(){
		
		List<Product> list=new ArrayList<Product>();
		list.add(new Product(1,"Toy","Toys sale","600"));
		list.add( new Product(2, "Stationary", "Measuring instruments", "900"));
		list.add( new Product(3, "Pokeman", "PIKACHOW ", "150"));
		list.add( new Product(4, "Doll", "Stuffed toys", "300"));
		
	return list;
	}
	@Override
	public void addProduct(Product obj) {
		sessionFactory.openSession().saveOrUpdate(obj); 
		 
	}
	
	
	}


