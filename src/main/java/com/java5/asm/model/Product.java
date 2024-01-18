package com.java5.asm.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	private Integer id;
	private String name;
	private Type type;
	private String description;
	private double price;
	private String image;
	private boolean action;
	private User user;
}
