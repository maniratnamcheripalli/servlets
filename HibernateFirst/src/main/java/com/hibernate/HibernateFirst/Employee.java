package com.hibernate.HibernateFirst;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity

public class Employee {
	@Id
	private int e_id;
	private String e_name,e_address;
	public Employee(int e_id, String e_name, String e_address) {
		super();
		this.e_id = e_id;
		this.e_name = e_name;
		this.e_address = e_address;
	}
	public Employee() {
		super();

	}
	public int getE_id() {
		return e_id;
	}
	public void setE_id(int e_id) {
		this.e_id = e_id;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_address() {
		return e_address;
	}
	public void setE_address(String e_address) {
		this.e_address = e_address;
	}
	
	
	
}
