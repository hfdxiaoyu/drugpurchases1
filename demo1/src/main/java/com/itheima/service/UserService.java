<<<<<<< HEAD
package com.itheima.service;
import com.itheima.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	//通过账号密码查询用户
	public User findUser(String usercode,String password);
}
=======
package com.itheima.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itheima.dao.UserDao;
import com.itheima.po.User;
@Service("userService")
public class UserService {
	@Autowired
	private UserDao userDao;
     public User login(User user) {
    	 return userDao.selectuserbyusernameandpassword(user);
     }
}
>>>>>>> refs/remotes/origin/master
