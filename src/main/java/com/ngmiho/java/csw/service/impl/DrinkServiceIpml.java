package com.java5.asm.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java5.asm.dao.DrinkDAO;
import com.java5.asm.entity.Drink;

@Service
public class DrinkServiceIpml implements DrinkService{
	@Autowired
	DrinkDAO drinkDAO;

//	@Override
//	public Drink save(Drink entity) {
//		return drinkDAO.save(entity);
//	}
//
//	@Override
//	public List<Drink> saveAll(List<Drink> entities) {
//		return (List<Drink>) drinkDAO.saveAll(entities);
//	}
//
//	@Override
//	public Optional<Drink> findById(Integer id) {
//		return drinkDAO.findById(id);
//	}
//
//	@Override
//	public boolean existsById(Integer id) {
//		return drinkDAO.existsById(id);
//	}
//
//	@Override
//	public List<Drink> findAll() {
//		return (List<Drink>) drinkDAO.findAll();
//	}
//
//	@Override
//	public List<Drink> findAllById(List<Integer> ids) {
//		return (List<Drink>) drinkDAO.findAllById(ids);
//	}
//
//	@Override
//	public long count() {
//		return drinkDAO.count();
//	}
//
//	@Override
//	public void deleteById(Integer id) {
//		drinkDAO.deleteById(id);
//	}
//
//	@Override
//	public void delete(Drink entity) {
//		drinkDAO.delete(entity);
//	}
//
//	@Override
//	public void deleteAllById(List<Integer> ids) {
//		drinkDAO.deleteAllById(ids);
//	}
//
//	@Override
//	public void deleteAll(List<Drink> entities) {
//		drinkDAO.deleteAll(entities);
//	}
//
//	@Override
//	public void deleteAll() {
//		drinkDAO.deleteAll();
//	}
	
	
}
