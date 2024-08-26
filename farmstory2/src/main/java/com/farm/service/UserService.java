package com.farm.service;

import java.util.List;

import com.farm.dao.UserDao;
import com.farm.dto.UserDto;

public enum UserService {

	INSTANCE;
	
	private UserDao dao = UserDao.getInstance();
	
	public void insertUser(UserDto dto) {
		dao.insertUser(dto);
	}
	public UserDto selectUser(String uid, String pass) {
		return dao.selectUser(uid, pass);
	}
	
	public List<UserDto> selectUsers() {
		return dao.selectUsers();
	}
	
	public void updateUser(UserDto dto) {
		dao.updateUser(dto);
	}
	
	public void deleteUser(String uid) {
		dao.deleteUser(uid);
	}
}
