package com.mvc;

public class Login {
	
	public String name,password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean verify() {
	
		if(password.equals("mani")) {
			
			return true;
		}
		else {
			
			return false;
		}
	}
}
