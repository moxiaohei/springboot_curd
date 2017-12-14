package com.mxf.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mxf.bean.User;
import com.mxf.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/selectAll")
	public String getAll(Model model){
		List<User> list = userService.selectAll();
		model.addAttribute("list", list);
		return "user_information";
	}
	
	@GetMapping("/deletUser{uid}")
	public String removeUser(@PathVariable("uid")Integer uid){
		Integer flag = userService.deleteUser(uid);
		if(flag > 0){
			return "redirect:/user/selectAll";
		}else{
			return "index";
		}
	}
	
	@GetMapping("/getUser{uid}")
	public String getUserById(@PathVariable("uid")Integer uid,Model model){
		User user = userService.getUser(uid);
		if(user!=null){
			model.addAttribute("user", user);
			return "user_alert";
		}else{
			return "index";
		}
	}
	
	@GetMapping("/updateUser")
	public String updateUser(@ModelAttribute("user")User user){
		int flag = userService.updateUser(user);
		if(flag > 0){
			return "redirect:/user/selectAll";
		}else{
			return "index";
		}
	}
	
	@GetMapping("/toAddUser")
	public String toAddUser(){
		return "user_add";
	}
	
	@GetMapping("/addUser")
	public String addUser(@ModelAttribute("user")User user){
		int flag = userService.addUser(user);
		if(flag > 0){
			return "redirect:/user/selectAll";
		}else{
			return "index";
		}
	}
	
}
