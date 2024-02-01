package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.java5.asm.entity.Drink;

public interface DrinkDAO extends JpaRepository<Drink, Integer> {
	
}
