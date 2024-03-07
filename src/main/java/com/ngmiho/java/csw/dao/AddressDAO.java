package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.entity.Address;

public interface AddressDAO extends JpaRepository<Address, Integer> {

}
