package com.java5.asm.model;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@NoArgsConstructor
@AllArgsConstructor
public class Account {
	
	public enum Role {
		Admin,
		User
	}
	
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
	private String firstName;
	@NotBlank(message = "{NotBlank.account.lastName}")
	private String lastName;
	@NotBlank(message = "{NotBlank.account.userName}")
	private String userName;
	@NotNull(message = "{NotBlank.account.gender}")
	private Integer gender;
	@NotNull(message = "{NotNull.account.admin}")
	private Role role;
	@NotNull(message = "{NotBlank.account.active}")
	private Boolean active;
}
