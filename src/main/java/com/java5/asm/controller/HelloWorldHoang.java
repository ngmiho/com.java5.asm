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

import com.java5.asm.dao.AccountDAO;
import com.java5.asm.dao.ProductDAO;
import com.java5.asm.model.Account;
import com.java5.asm.model.Product;
import com.java5.asm.model.service.ParamService;
import com.java5.asm.model.service.SessionService;

import jakarta.validation.Valid;

@Controller
public class HelloWorldHoang {
	@Autowired
	SessionService session;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	AccountDAO accountDAO;
	
	
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		List<Product> bestsells = productDAO.findAll();

		model.addAttribute("bestsells", bestsells);
		
		return "index";
	}
	@PostMapping("/index")
	public String postIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
	
	@GetMapping("/admin/index")
	public String getAdminIndex(Model model) {
		model.addAttribute("jsp", "info.jsp");
		model.addAttribute("active", "1");
		
		Optional<Account> account = accountDAO.findById(Integer.valueOf(1));

		model.addAttribute("account", account);
		
		return "/admin/index";
	}
	@PostMapping("/admin/index")
	public String postAdminIndex(@Valid @ModelAttribute("account") Account account,
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
	
}
