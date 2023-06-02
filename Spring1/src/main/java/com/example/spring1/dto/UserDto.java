package com.example.spring1.dto;

import com.example.spring1.model.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDto {
	
	private long id;
	private String email;
	private String password;
	private String role;
	
	public User toEntity() {
		return User.builder()
				.id(id)
				.email(email)
				.password(password)
				.role("ROLE_USER")
				.build();
	}

}
