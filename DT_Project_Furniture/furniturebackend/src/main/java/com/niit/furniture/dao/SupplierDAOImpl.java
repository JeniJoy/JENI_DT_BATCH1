package com.niit.furniture.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.furniture.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public SupplierDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Supplier> list() {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) sessionFactory.getCurrentSession()
				.createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
obj.commit();
		return list;
	}

	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		obj.commit();
	}

	@Transactional
	public String delete(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		Supplier supplier = new Supplier();
		supplier.setId(id);
		try {
			sessionFactory.getCurrentSession().delete(supplier);
		} catch (HibernateException e) {
			e.printStackTrace();
			return e.getMessage();
			
		}
		obj.commit();
		return null;
	}

	@Transactional
	public Supplier get(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		String hql = "from Supplier where id=" + "'"+ id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		obj.commit();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public Supplier getByName(String name) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		String hql = "from Supplier where name=" + "'"+ name+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		obj.commit();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}


}
