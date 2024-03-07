package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.entity.User;

public interface UserDAO extends JpaRepository<User, String> {

}
