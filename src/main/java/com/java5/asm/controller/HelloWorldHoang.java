package com.java5.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
		
		
		return "index";
	}
	@PostMapping("/index")
	public String postIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
}
