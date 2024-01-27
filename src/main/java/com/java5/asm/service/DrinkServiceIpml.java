package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.DrinkDAO;

@Service
public class DrinkServiceIpml implements DrinkService{
	@Autowired
	DrinkDAO drinkDAO;
}
