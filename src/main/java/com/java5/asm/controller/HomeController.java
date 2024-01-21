package com.java5.asm.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java5.asm.model.Account;
import com.java5.asm.model.Product;

import jakarta.validation.Valid;

@Controller
public class HomeController {
	
	
	@GetMapping("/best-sell")
	public String getTodaySpecial(Model model) {
		model.addAttribute("jsp", "best-sell.jsp");
		model.addAttribute("active", "2");
		
		return "index";
	}
	@PostMapping("/today-special")
	public String postTodaySpecial(Model model) {
		model.addAttribute("jsp", "best-sell.jsp");
		model.addAttribute("active", "2");
		
		return "index";
	}
	
	@GetMapping("/menu")
	public String getMenu(Model model) {
		model.addAttribute("jsp", "menu.jsp");
		model.addAttribute("active", "3");
		
		return "index";
	}
	@PostMapping("/menu")
	public String postMenu(Model model) {
		model.addAttribute("jsp", "menu.jsp");
		model.addAttribute("active", "3");
		
		return "index";
	}
	
	@GetMapping("/contact")
	public String getContact(Model model) {
		model.addAttribute("jsp", "contact.jsp");
		model.addAttribute("active", "4");
		
		return "index";
	}
	@PostMapping("/contact")
	public String postContact(Model model) {
		model.addAttribute("jsp", "contact.jsp");
		model.addAttribute("active", "4");
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String rqLogin(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
			return "admin/index";
		}
		return "login";
	}
	
	@RequestMapping("/sign-up")
	public String rqSignUp(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "sign-up";
	}
	
	@RequestMapping("/forgot-password")
	public String rqForgotPassword(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "forgot-password";
	}
	
	@GetMapping("/opt")
	public String getOTP(Model model) {
		
		return "otp";
	}
	@PostMapping("/otp")
	public String postOTP(Model model) {
		
		return "otp";
	}
	@GetMapping("/confirm-otp")
	public String getConfirmOTP(Model model) {
		
		return "otp";
	}
	@PostMapping("/confirm-otp")
	public String postConfirmOTP(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model) {
		
		return "login";
	}
	
	@RequestMapping("/change-password")
	public String rqChangePassword(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "change-password";
	}
	
	@RequestMapping("/admin/index")
	public String rqAdminIndex(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model){
		model.addAttribute("jsp", "info.jsp");
		model.addAttribute("active", "1");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	
	@GetMapping("/admin/account")
	public String getAdminAccount(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "account.jsp");
		model.addAttribute("active", "2");
		
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "admin/index";
	}
	@PostMapping("/admin/account")
	public String postAdminAccount(@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "account.jsp");
		model.addAttribute("active", "2");
		
		return "admin/index";
	}
	
	@GetMapping("/admin/product")
	public String getAdminProduct(@Valid @ModelAttribute("product") Product product,
			@Valid @ModelAttribute("account") Account account,
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
	public String postAdminProduct(@Valid @ModelAttribute("product") Product product,
			@Valid @ModelAttribute("account") Account account,
			BindingResult result, Model model) {
		model.addAttribute("jsp", "product.jsp");
		model.addAttribute("active", "3");
		
		return "admin/index";
	}
}
