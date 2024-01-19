package com.java5.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HelloWorldHoang {
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
	@PostMapping("/index")
	public String postIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
}
