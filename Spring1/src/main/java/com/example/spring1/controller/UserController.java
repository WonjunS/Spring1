package com.example.spring1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.spring1.dto.UserDto;
import com.example.spring1.service.UserService;

import lombok.RequiredArgsConstructor;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {
	
	private final UserService userService;
	
	@GetMapping("/login")
	public String getLoginForm() {
		System.out.println("login page로 이동");
		return "user/login";
	}
	
	@PostMapping("/login")
	public String login() {
		return "index";
	}
	
	@GetMapping("/join")
	public String getSignupForm() {
		return "user/join";
	}
	
	@PostMapping("/join")
	public String signup(UserDto dto) {
		int result = userService.join(dto);
		return "redirect:/";
	}
	
	@GetMapping("/detail")
	public String detail() {
		return "user/detail";
	}
	
	@PostMapping("/logout")
	public void logout() {
		
	}

}
