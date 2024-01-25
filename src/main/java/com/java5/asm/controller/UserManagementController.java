package com.java5.asm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.java5.asm.entity.User;
import com.java5.asm.service.UserService;

@Controller
public class UserManagementController {
	@Autowired
	UserService userService;

	@GetMapping("/admin/user")
	public String getUser(Model model, @ModelAttribute("user") User user) {
		model.addAttribute("user", user);
		model.addAttribute("jsp", "account.jsp");
		model.addAttribute("active", "3");
		return "/admin/index";
	}

	@PostMapping("/admin/user")
	public String save(@ModelAttribute("user") User user, Model model) {
		userService.save(user);
		model.addAttribute("jsp", "account.jsp");
		model.addAttribute("active", "3");
		return "/admin/index";

	}
}
