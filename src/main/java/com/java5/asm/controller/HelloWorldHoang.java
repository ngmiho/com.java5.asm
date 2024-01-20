package com.java5.asm.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.java5.asm.model.Product;
import com.java5.asm.model.service.ParamService;
import com.java5.asm.model.service.SessionService;

@Controller
public class HelloWorldHoang {
	@Autowired
	SessionService session;
	
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");

		List<Product> bestsells = Arrays.asList(
				new Product(1, "test", "Coffee", "test", 18.000, "bestsell1.png", (Boolean) true),
				new Product(2, "test", "Coffee", "test", 18.000, "bestsell2.png", (Boolean) true),
				new Product(3, "test", "Coffee", "test", 18.000, "bestsell3.png", (Boolean) true));
		session.set("bestsells", bestsells);
		
		
		return "index";
	}
	@PostMapping("/index")
	public String postIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
}
