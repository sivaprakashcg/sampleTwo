package com.mkyong.helloworld.service;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.java.persistance.Employee;
import com.java.util.HibernateUtil;

@Service
public class HelloWorldService {


	public String getDesc() {
System.out.println("inside description");
		return "Gradle + Spring MVC Hello World Example";

	}

	public String getTitle(String name) {
		Transaction transaction = null;
		Session session = null;
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Employee employee = new Employee();
			employee.setEmpName("Balaji");
			session.saveOrUpdate(employee);
			transaction.commit();
			// logger.debug("getTitle() is executed! $name : {}", name);
	System.out.println("inside title");
			if(null == name) {
				return "Hello World";
			} else {
				return "Hello :" + name;
			}
		}catch(Exception e){
			if(transaction != null){
				transaction.rollback();
			}
		}finally{
			if(session != null){
				session.close();
			}
		}
		return "succ";
	}

}