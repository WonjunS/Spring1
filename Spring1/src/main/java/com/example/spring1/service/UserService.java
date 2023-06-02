package com.example.spring1.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.spring1.dto.UserDto;
import com.example.spring1.model.User;
import com.example.spring1.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserRepository userRepository;
	private final BCryptPasswordEncoder passwordEncoder;
	
	public int join(UserDto dto) {
		String password = passwordEncoder.encode(dto.getPassword());
		dto.setPassword(password);
		return userRepository.insertUser(dto.toEntity());
	}
	
	public User select(String email) {
		return userRepository.selectUser(email);
	}

}
