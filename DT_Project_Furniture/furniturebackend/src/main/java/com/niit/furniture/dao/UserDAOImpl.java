package com.niit.furniture.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.furniture.model.User;
import com.niit.furniture.model.UserDetails;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	

	@Autowired
	private SessionFactory sessionFactory;


	public UserDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<User> list() {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) sessionFactory.getCurrentSession()
				.createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
obj.commit();
		return list;
	}

	@Transactional
	public void saveOrUpdate(User user) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		obj.commit();
	}
	
	@Transactional
	public void saveOrUpdate(UserDetails userDetails) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
		obj.commit();
	}


	@Transactional
	public void delete(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		User user = new User();
		user.setId(id);
		sessionFactory.getCurrentSession().delete(user);
		obj.commit();
	}

	@Transactional
	public User get(String id) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		String hql = "from User where id=" + "'"+ id+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		obj.commit();
		if (list != null && !list.isEmpty()) {
			return list.get(0);
		}
		
		return null;
	}
	
	@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
		Transaction obj = sessionFactory.getCurrentSession().beginTransaction();
		String hql = "from User where id= '" + id + "' and " + " password ='" + password+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		obj.commit();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		
		return false;
	}


}
