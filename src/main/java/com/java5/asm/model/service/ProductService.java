package com.java5.asm.model.service;

import java.util.Collection;

import com.java5.asm.model.Product;

public interface ProductService {

	Product add(Integer id);
	void remove(Integer id);
	Product update(Integer id, String qty);
	void clear();
	Collection<Product> getItems();
	int getCount();
}
