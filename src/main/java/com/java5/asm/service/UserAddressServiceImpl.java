package com.java5.asm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.UserAddressDAO;

@Service
public class UserAddressServiceImpl implements UserAddressService {
	@Autowired
	UserAddressDAO userAddressDAO;

}
