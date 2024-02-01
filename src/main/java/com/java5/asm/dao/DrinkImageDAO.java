package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.java5.asm.entity.DrinkImage;

public interface DrinkImageDAO extends CrudRepository<DrinkImage, Integer> {

}
