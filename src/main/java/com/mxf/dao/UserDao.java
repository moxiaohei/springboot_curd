package com.mxf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.mxf.bean.User;

public interface UserDao {
	
	@Select("select * from user")
	public List<User> selectAll();
	
	@Delete("delete from user where uid = #{uid}")
	public int deleteUser(Integer uid);
	
	@Select("select * from user where uid = #{uid}")
	public User getUser(Integer uid);
	
	@Update("update user set uauth=#{uauth},username=#{username},password=#{password},ustatus=#{ustatus} where uid=#{uid}")
	public int updateUser(User user);
	
	@Insert("insert into user values(#{uid},#{uauth},#{username},#{password},#{ustatus},#{uname})")
	public int addUser(User user);
	
}
