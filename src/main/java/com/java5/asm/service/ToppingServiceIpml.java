package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.ToppingDAO;

@Service
public class ToppingServiceIpml implements ToppingService{
	@Autowired
	ToppingDAO toppingDAO;
}
