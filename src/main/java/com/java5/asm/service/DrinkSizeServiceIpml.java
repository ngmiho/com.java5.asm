package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.DrinkSizeDAO;

@Service
public class DrinkSizeServiceIpml implements DrinkSizeService{
	@Autowired
	DrinkSizeDAO drinkSizeDAO;
}
