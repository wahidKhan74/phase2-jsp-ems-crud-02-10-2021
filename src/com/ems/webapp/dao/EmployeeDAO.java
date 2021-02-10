package com.ems.webapp.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.ems.webapp.entity.Employee;
import com.ems.webapp.util.HibernateUtil;

public class EmployeeDAO {

	public static void addEmployee(Employee employee) {
		// 1. build session factory
		SessionFactory factory = HibernateUtil.buildSessionFactory();
				
		// 2. open session 
		Session session = factory.openSession();
		Transaction tx = session.beginTransaction();
				
		// 4. save entity object
		session.save(employee);
		tx.commit();
				
		// 5. close session
		session.close();
	}
	
	public static List<Employee>  listEmployee() {
		Session session = HibernateUtil.buildSessionFactory().openSession();
		
		return session.createQuery("from Employee as e").list();
	}
}
