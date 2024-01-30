package com.java5.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MenuController {
	@GetMapping("menu")
	public String getMenu(Model model) {
		model.addAttribute("jsp", "menu.jsp");
		model.addAttribute("active", "1");
		return "index";
	}
}
