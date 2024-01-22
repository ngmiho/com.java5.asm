package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.model.Account;

public interface AccountDAO extends JpaRepository<Account, Integer> {
	
}
