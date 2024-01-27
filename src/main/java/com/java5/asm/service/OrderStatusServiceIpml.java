package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.OrderStatusDAO;

@Service
public class OrderStatusServiceIpml implements OrderService {
	@Autowired
	OrderStatusDAO orderStatusDAO;
}
