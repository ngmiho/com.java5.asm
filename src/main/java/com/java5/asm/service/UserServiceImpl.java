package com.java5.asm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.UserDAO;
import com.java5.asm.entity.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserDAO userDAO;

	@Override
	public <S extends User> S save(S entity) {
		return userDAO.save(entity);
	}

	@Override
	public List<User> findAll() {
		return userDAO.findAll();
	}

	@Override
	public <S extends User> Page<S> findAll(Example<S> example, Pageable pageable) {
		return userDAO.findAll(example, pageable);
	}

	@Override
	public Optional<User> findById(String id) {
		return userDAO.findById(id);
	}

	@Override
	public boolean existsById(String id) {
		return userDAO.existsById(id);
	}

	@Override
	public void deleteById(String id) {
		userDAO.deleteById(id);
	}

	@Override
	public <S extends User> List<S> findAll(Example<S> example, Sort sort) {
		return userDAO.findAll(example, sort);
	}
	
	
}
