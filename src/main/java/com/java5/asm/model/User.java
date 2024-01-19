package com.java5.asm.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	public enum admin {
		  user,
		  admin
		}
	private String username;
	private String fullname;
	private String phone;
	private String address;
	private String email;
	private admin admin;
	private boolean action; 
}
