package com.java5.asm.entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
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
@Table(name = "drink_sizes", uniqueConstraints = { @UniqueConstraint(columnNames = { "drink_id", "size_id" }) })
public class DrinkSize implements Serializable  {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private Double price;
	
	@ManyToOne
	@JoinColumn(name = "drink_id")
	private Drink drink;
	
	@ManyToOne
	@JoinColumn(name = "size_id")
	private Size size;
}
