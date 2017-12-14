package com.mxf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mxf.bean.User;
import com.mxf.dao.UserDao;
import com.mxf.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public List<User> selectAll() {
		return userDao.selectAll();
	}

	@Override
	public int deleteUser(Integer uid) {
		return userDao.deleteUser(uid);
	}

	@Override
	public User getUser(Integer uid) {
		return userDao.getUser(uid);
	}

	@Override
	public int updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public int addUser(User user) {
		return userDao.addUser(user);
	}

}
