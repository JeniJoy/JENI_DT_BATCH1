package dao;

import java.util.ArrayList;


import java.util.List;

import bean.Product;



public class ProductDaoImp implements ProductDao {
	
	
	
	public List<Product> getAllProducts(){
		
		List<Product> list=new ArrayList<Product>();
		list.add(new Product(1,"Toy","Toys sale","600"));
		list.add( new Product(2, "Stationary", "Measuring instruments", "900"));
		list.add( new Product(3, "Pokeman", "PIKACHOW ", "150"));
		list.add( new Product(4, "Doll", "Stuffed toys", "300"));
		
	return list;
	}
	
	
	}


