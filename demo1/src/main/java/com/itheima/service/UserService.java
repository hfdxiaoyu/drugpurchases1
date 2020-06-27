package com.itheima.service;
import com.itheima.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	//通过账号密码查询用户
	public User findUser(String usercode,String password);
}
