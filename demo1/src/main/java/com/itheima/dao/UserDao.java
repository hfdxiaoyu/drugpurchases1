package com.itheima.dao;

import org.apache.ibatis.annotations.Param;

import com.itheima.po.User;
/**
 * 用户DAO层接口
 */
public interface UserDao1 {
	/**
	 * 通过账号和密码查询用户
	 */
		public User findUser(@Param("usercode")String usercode,
				             @Param("password")String password);
}
