package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.entity.Drink;

public interface DrinkDAO extends JpaRepository<Drink, Integer> {

}
