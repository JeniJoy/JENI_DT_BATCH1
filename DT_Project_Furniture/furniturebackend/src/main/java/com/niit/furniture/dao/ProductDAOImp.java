package com.niit.furniture.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.furniture.model.Product;

@Repository("productDAO")
public class ProductDAOImp implements ProductDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public ProductDAOImp(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Product> list() {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
obj.commit();
		return listProduct;
	}

	@Transactional
	public void saveOrUpdate(Product product) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		obj.commit();
	}

	@Transactional
	public void delete(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		Product ProductToDelete = new Product();
		ProductToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(ProductToDelete);
		obj.commit();
	}

	@Transactional
	public Product get(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		String hql = "from Product where id="+"'" + id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		obj.commit();
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}


}
