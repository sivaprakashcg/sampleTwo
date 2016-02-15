package com.java.util;
 
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
 
public class HibernateUtil {
 
	private static final SessionFactory sessionFactory = buildSessionFactory();
 
	@SuppressWarnings("deprecation")
	private static SessionFactory buildSessionFactory() {
		try {
			System.out.println("--------");
			// Create the SessionFactory from hibernate.cfg.xml
			return new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			// Make sure you log the exception, as it might be swallowed
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
 
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
 
	public static void shutdown() {
		// Close caches and connection pools
		getSessionFactory().close();
	}
 public static void main(String[] args) {
	 try{
		 Session session = sessionFactory.openSession();
			Query query = session.createSQLQuery("select * from employee");
			query.list();
	 }catch(Exception e){
		 e.printStackTrace();
	 }
	
	
}
}