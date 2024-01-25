package com.java5.asm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.java5.asm.entity.Address;

public interface AddressService {

	<S extends Address> List<S> findAll(Example<S> example, Sort sort);

	void deleteById(Integer id);

	boolean existsById(Integer id);

	Optional<Address> findById(Integer id);

	<S extends Address> Page<S> findAll(Example<S> example, Pageable pageable);

	List<Address> findAll();

	<S extends Address> Optional<S> findOne(Example<S> example);

	<S extends Address> S save(S entity);

	

}
