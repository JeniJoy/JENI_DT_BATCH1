package com.niit.furniture.config;

import java.util.Properties;



import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.furniture.dao.CategoryDAO;
import com.niit.furniture.dao.CategoryDAOImpl;
import com.niit.furniture.model.Category;
import com.niit.furniture.model.Product;
import com.niit.furniture.model.Supplier;
import com.niit.furniture.model.User;


@Configuration
@ComponentScan("com.niit.furniturebackend")
@EnableTransactionManagement
public class ApplicationContextConfig {

	@Bean(name="dataSource")
	public DataSource getDataSource(){
		
		BasicDataSource ds = new BasicDataSource();
		ds.setDriverClassName("org.h2.Driver");
    	ds.setUrl("jdbc:h2:tcp://localhost/~/test");
    	ds.setUsername("sa");
    	ds.setPassword("");
    	return ds;

	}
	
	
	private Properties getHibernateProperties(){
		
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
    	properties.put("hibernate.connection.pool_size", 10);
    	properties.put("hibernate.current_session_context_class","thread");
    	properties.put("hibernate.hbm2ddl.auto","update"); 
    	return properties;

		
	}
	
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    	sessionBuilder.addProperties(getHibernateProperties());
    	sessionBuilder.addAnnotatedClasses(Category.class);
    	sessionBuilder.addAnnotatedClasses(Supplier.class);
    	sessionBuilder.addAnnotatedClasses(User.class);
    	sessionBuilder.addAnnotatedClasses(Product.class);
    	return sessionBuilder.buildSessionFactory();
    }
    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(
			SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(
				sessionFactory);

		return transactionManager;
	}
    
 
    @Autowired
    @Bean(name = "categoryDao")
    public CategoryDAO geCategorDao(SessionFactory sessionFactory) {
    	return new CategoryDAOImpl(sessionFactory);
    }


}
