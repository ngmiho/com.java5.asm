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
import com.java5.asm.entity.Order;
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
		
		return "admin/index";
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
		
		return "admin/index";
	}
	
	@GetMapping("/admin/order")
	public String getAdminOrder(Model model) {
		model.addAttribute("jsp", "order.jsp");
		model.addAttribute("active", "2");
		
		Optional<User> user = userDAO.findById("1");

		model.addAttribute("user", user);
		
		return "admin/index";
	}
	@PostMapping("/admin/order")
	public String postAdminOrder(@Valid @ModelAttribute("order") Order order,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "order.jsp");
		model.addAttribute("active", "2");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "admin/index";
	}
	
	@GetMapping("/admin/history")
	public String getAdminHistory(Model model) {
		model.addAttribute("jsp", "history.jsp");
		model.addAttribute("active", "3");
		
		Optional<User> user = userDAO.findById("1");

		model.addAttribute("user", user);
		
		return "admin/index";
	}
	@PostMapping("/admin/history")
	public String postAdminHistory(@Valid @ModelAttribute("order") Order order,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "history.jsp");
		model.addAttribute("active", "3");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		
		return "admin/index";
	}
	
	
	@GetMapping("/admin/drink-management")
	public String getAdminProduct(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "drink-management.jsp");
		model.addAttribute("active", "5");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	@PostMapping("/admin/drink-management")
	public String postAdminProduct(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "drink-management.jsp");
		model.addAttribute("active", "5");
		
		return "admin/index";
	}
	
	@GetMapping("/admin/order-management")
	public String getAdminOrderManagement(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "order-management.jsp");
		model.addAttribute("active", "6");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	@PostMapping("/admin/order-management")
	public String postAdminOrderManagement(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "order-management.jsp");
		model.addAttribute("active", "6");
		
		return "admin/index";
	}
	
	@GetMapping("/admin/report")
	public String getAdminReport(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "report.jsp");
		model.addAttribute("active", "7");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	@PostMapping("/admin/report")
	public String postAdminReport(@Valid @ModelAttribute("drink") Drink drink,
			@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "report.jsp");
		model.addAttribute("active", "7");
		
		return "admin/index";
	}
}


