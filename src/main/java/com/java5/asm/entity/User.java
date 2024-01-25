package com.java5.asm.entity;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@SuppressWarnings("serial")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "users")
public class User implements Serializable {

	@Id
	@Column(columnDefinition = "varchar(10)")
	@NotEmpty(message = "{NotEmpty.user.username}")
	private String username;
	
	@NotEmpty(message = "{NotEmpty.user.password}")
	private String password;

	
	@Column(name = "first_name", columnDefinition = "nvarchar(15)")
	@NotEmpty(message = "{NotEmpty.user.firstName}")
	private String firstName;

	@Column(name = "last_name", columnDefinition = "nvarchar(15)")
	@NotEmpty(message = "{NotEmpty.user.lastName}")
	private String lastName;

	@Column(name = "phone_number", columnDefinition = "varchar(13)")
	@NotEmpty(message = "{NotEmpty.user.phoneNumber}")
	private String phoneNumber;

	@Column(columnDefinition = "varchar(150)")
	@NotEmpty(message = "{NotEmpty.user.email}")
	@Email(message = "{Email.user.email}")
	private String email;

	@NotNull(message = "{NotNull.user.admin}")
	private Boolean admin = false;

	@NotNull(message = "{NotNull.user.active}")
	private Boolean active = true;

	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<UserAddress> userAddresses;
	
	@JsonIgnore
	@OneToMany(mappedBy = "user")
	private List<Order> orders;

	public User(@NotEmpty(message = "{NotEmpty.user.username}") String username,
			@NotEmpty(message = "{NotEmpty.user.password}") String password,
			@NotEmpty(message = "{NotEmpty.user.firstName}") String firstName,
			@NotEmpty(message = "{NotEmpty.user.lastName}") String lastName,
			@NotEmpty(message = "{NotEmpty.user.phoneNumber}") String phoneNumber,
			@NotEmpty(message = "{NotEmpty.user.email}") @Email(message = "{Email.user.email}") String email,
			@NotNull(message = "{NotNull.user.admin}") Boolean admin,
			@NotNull(message = "{NotNull.user.active}") Boolean active) {
		super();
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.admin = admin;
		this.active = active;
	}
	
	
}
