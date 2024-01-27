package com.java5.asm.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java5.asm.dao.DrinkDAO;
import com.java5.asm.dao.UserDAO;
import com.java5.asm.entity.Drink;
import com.java5.asm.entity.User;


import jakarta.validation.Valid;

@Controller
public class AdminController {

	@Autowired
	DrinkDAO drinkDAO;
	@Autowired
	UserDAO userDAO;
	
	
	@GetMapping("/admin/index")
	public String getAdminIndex(Model model) {
		model.addAttribute("jsp", "info.jsp");
		model.addAttribute("active", "1");
		
		Optional<User> user = userDAO.findById("1");

		model.addAttribute("user", user);
		
		return "/admin/index";
	}
	@PostMapping("/admin/index")
	public String postAdminIndex(@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "info.jsp");
		model.addAttribute("active", "1");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "/admin/index";
	}
	
	
	@GetMapping("/admin/product")
	public String getAdminProduct(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "product.jsp");
		model.addAttribute("active", "3");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	@PostMapping("/admin/product")
	public String postAdminProduct(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "product.jsp");
		model.addAttribute("active", "3");
		
		return "admin/index";
	}
}


