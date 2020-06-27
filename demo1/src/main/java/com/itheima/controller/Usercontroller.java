package com.itheima.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itheima.po.User;
import com.itheima.service.UserService;

@Controller
public class Usercontroller {
	@Autowired
	UserService  userService;
	@GetMapping("/login.do")
public  User  login() {
	System.out.println("111");
User user  =new User();
user.setId(1);
user.setPassword("123");
		System.out.println(user);
 User user2=		userService.login(user);
 System.out.println(user2);
	return user2;
}
	@RequestMapping("/hello.do")
	public String  hello() {
		System.out.println("hello");
		return null;
	}
}
