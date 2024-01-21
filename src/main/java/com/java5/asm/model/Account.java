package com.java5.asm.model;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Accounts")
public class Account implements Serializable {
	
	public enum Role {
		Admin,
		User
	}
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@NotBlank(message = "{NotBlank.account.email}")
	@Email(message = "{Email.account.email}")
	private String email;
	@NotBlank(message = "{NotBlank.account.password}")
	private String password;
	@NotBlank(message = "{NotBlank.account.phone}")
	private String phone;
	@NotBlank(message = "{NotBlank.account.address}")
	private String address;
	@NotBlank(message = "{NotBlank.account.firstName}")
	private String firstname;
	@NotBlank(message = "{NotBlank.account.lastName}")
	private String lastname;
	@NotBlank(message = "{NotBlank.account.userName}")
	private String username;
	@NotNull(message = "{NotBlank.account.gender}")
	private Integer gender;
	@NotNull(message = "{NotNull.account.role}")
	private Role role;
	@NotNull(message = "{NotBlank.account.active}")
	private Boolean active;
}
