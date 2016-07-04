package com.memo.dao;

import java.util.List;

import com.memo.bean.Product;

public interface ProductDao {

	List<Product> getAllProducts();
	public void addProduct(Product obj);
}
