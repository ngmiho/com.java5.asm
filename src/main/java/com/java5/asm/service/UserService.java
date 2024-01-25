package com.java5.asm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.java5.asm.entity.User;

public interface UserService {

	<S extends User> List<S> findAll(Example<S> example, Sort sort);

	void deleteById(String id);

	boolean existsById(String id);

	Optional<User> findById(String id);

	<S extends User> Page<S> findAll(Example<S> example, Pageable pageable);

	List<User> findAll();

	<S extends User> S save(S entity);

}
