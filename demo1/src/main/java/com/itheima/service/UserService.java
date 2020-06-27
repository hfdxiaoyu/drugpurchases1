package com.itheima.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.dao.UserDao;
import com.itheima.po.User;
@Service("userService")
public class UserService {
	@Autowired
	private UserDao userDao;
     public   User    login(User user) {
    	 return    userDao.selectuserbyusernameandpassword(user);
     }
}
