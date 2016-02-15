package com.mkyong.helloworld.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import com.java.persistance.Employee;
import com.java.util.HibernateUtil;
import com.sampleapp.viewDTO.UserDTO;

@Service
public class UserService {
		public String saveUser(UserDTO userDTO){
		Transaction transaction = null;
		Session session = null;
		try{
			session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			Employee employee = new Employee();
			employee.setEmpName(userDTO.getFname());
			employee.setLastname(userDTO.getLname());
			employee.setMiddlename(userDTO.getMname());
			employee.setPhnumber(userDTO.getPhNumber());
			employee.setEmail(userDTO.getEmail());
			session.saveOrUpdate(employee);
			transaction.commit();
			// logger.debug("getTitle() is executed! $name : {}", name);
		}catch(Exception e){
			if(transaction != null){
				transaction.rollback();
			}
		}finally{
			if(session != null){
				session.close();
			}
		}
	
		return "success";
	}

		public List<Employee> listUser(){
			Transaction transaction = null;
			Session session = null;
			List<Employee> employees = null;
			try{
				session = HibernateUtil.getSessionFactory().openSession();
				employees = session.createQuery("from Employee").list();;
			}catch(Exception e){
				
			}
			return employees;
		}
		
		public Employee editUser(UserDTO userDTO){
			
			Session session = null;
			Employee employee = null;
			try{
				session = HibernateUtil.getSessionFactory().openSession();
				employee = (Employee)session.get(Employee.class, userDTO.getUserId());
			}catch(Exception e){
				
			}
			return employee;
		}
		
		public boolean updateUser(UserDTO userDTO){
			Transaction transaction = null;
			Session session = null;
			try{
				session = HibernateUtil.getSessionFactory().openSession();
				transaction = session.beginTransaction();
				Employee employee = new Employee();
				employee.setEmpId(userDTO.getUserId());
				employee.setEmpName(userDTO.getFname());
				employee.setLastname(userDTO.getLname());
				employee.setMiddlename(userDTO.getMname());
				employee.setPhnumber(userDTO.getPhNumber());
				employee.setEmail(userDTO.getEmail());
				session.saveOrUpdate(employee);
				transaction.commit();
				// logger.debug("getTitle() is executed! $name : {}", name);
			}catch(Exception e){
				if(transaction != null){
					transaction.rollback();
				}
			}finally{
				if(session != null){
					session.close();
				}
			}
		
			return true;
		}
}