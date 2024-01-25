package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.entity.UserAddress;

public interface UserAddressDAO extends JpaRepository<UserAddress, Integer> {

}
