package com.java5.asm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.java5.asm.dao.DrinkDAO;
import com.java5.asm.entity.Drink;
import com.java5.asm.entity.User;

import jakarta.validation.Valid;



@Controller
public class HomeController {
	
	@Autowired
	DrinkDAO drinkDAO;
	
	@GetMapping("/index")
	public String getIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		List<Drink> bestsells = drinkDAO.findAll();

		model.addAttribute("bestsells", bestsells);
		
		return "index";
	}
	@PostMapping("/index")
	public String postIndex(Model model) {
		model.addAttribute("jsp", "home.jsp");
		model.addAttribute("active", "1");
		
		return "index";
	}
	
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
	public String rqLogin(@Valid @ModelAttribute("user") User user,
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
	public String rqSignUp(@Valid @ModelAttribute("user") User User,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "sign-up";
	}
	
	@RequestMapping("/forgot-password")
	public String rqForgotPassword(@Valid @ModelAttribute("user") User user,
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
	public String postConfirmOTP(@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model) {
		
		return "login";
	}
	
	@RequestMapping("/change-password")
	public String rqChangePassword(@Valid @ModelAttribute("user") User user,
			BindingResult result, Model model){
		if (result.hasErrors()) {
			model.addAttribute("message", "Invalid information!");
		} else {
			model.addAttribute("message", "Valid information!");
		}
		return "change-password";
	}
	
	
	
}
