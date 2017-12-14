package com.mxf.service;

import java.util.List;

import com.mxf.bean.User;

public interface UserService {
	
	//查询所有用户信息
	public List<User> selectAll();
	
	//根据学生ID删除学生信息
	public int deleteUser(Integer uid);
	
	//根据学生ID查询学生信息
	public User getUser(Integer uid);
	
	//根据学生ID更新学生信息
	public int updateUser(User user);
	
	//添加学生信息
	public int addUser(User user);
}
