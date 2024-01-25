package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.DrinkImageDAO;

@Service
public class DrinkImageServiceIpml implements DrinkImageService{
	@Autowired
	DrinkImageDAO drinkImageDAO;
}
