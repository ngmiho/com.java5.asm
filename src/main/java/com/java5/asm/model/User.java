package com.java5.asm.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity @Table(name = "user")
public class User {
	public enum admin {
		  user,
		  admin
		}
	@Id
	private Integer id;
	private String username;
	private String fullname;
	private String phone;
	private String address;
	private String email;
	private boolean admin;
	private boolean action; 
}
