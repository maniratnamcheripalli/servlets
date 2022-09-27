package com.hibernate.HibernateFirst;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class App {
	public static void main(String[] args) {
		System.out.println("Hello First Project");

		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = factory.openSession();

		Employee e = new Employee();
		e.setE_id(20);
		e.setE_name("Taman");
		e.setE_address("Chennai");
		
	
		session.beginTransaction();
		session.save(e);
		session.getTransaction().commit();
		session.close();

	}
}
