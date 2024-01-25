package com.java5.asm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.java5.asm.dao.AddressDAO;
import com.java5.asm.entity.Address;

public class AddressServiceIpml implements AddressService {
	@Autowired
	AddressDAO addressDAO;

	@Override
	public <S extends Address> S save(S entity) {
		return addressDAO.save(entity);
	}

	@Override
	public <S extends Address> Optional<S> findOne(Example<S> example) {
		return addressDAO.findOne(example);
	}

	@Override
	public List<Address> findAll() {
		return addressDAO.findAll();
	}

	@Override
	public <S extends Address> Page<S> findAll(Example<S> example, Pageable pageable) {
		return addressDAO.findAll(example, pageable);
	}

	@Override
	public Optional<Address> findById(Integer id) {
		return addressDAO.findById(id);
	}

	@Override
	public boolean existsById(Integer id) {
		return addressDAO.existsById(id);
	}

	@Override
	public void deleteById(Integer id) {
		addressDAO.deleteById(id);
	}

	@Override
	public <S extends Address> List<S> findAll(Example<S> example, Sort sort) {
		return addressDAO.findAll(example, sort);
	}

	
	
	
}
