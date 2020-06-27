package com.itheima.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.UserDao;
import com.itheima.po.User;
import com.itheima.service.UserService;
/**
 * 用户Service接口实现类
 */
@Service("userService")
@Transactional
public class UserServiceImpl  implements UserService{
	//注入UserDao
	@Autowired
	private UserDao UserDao;
	//通过账号和密码查询用户
	@Override
	public User findUser(String usercode, String password) {
		// TODO Auto-generated method stub
		return UserDao.findUser(usercode,password);
	}

}
