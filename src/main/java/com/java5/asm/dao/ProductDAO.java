package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {

}
