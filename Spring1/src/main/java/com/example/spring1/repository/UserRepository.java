package com.example.spring1.repository;

import com.example.spring1.model.User;

public interface UserRepository {

	int insertUser(User user);
	User selectUser(String email);
	
}
