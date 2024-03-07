package com.java5.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java5.asm.entity.Order;

public interface OrderDAO extends JpaRepository<Order, Long> {

}
