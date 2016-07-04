package com.memo.service;

import java.util.List;

import com.memo.bean.Product;

public interface ProductService {
	public List<Product> getAllProducts();
	public void addProduct(Product productBean);
	
	}


