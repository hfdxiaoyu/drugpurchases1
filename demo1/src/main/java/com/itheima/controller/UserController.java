package com.itheima.controller;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.itheima.po.User;
import com.itheima.service.UserService;

import net.sf.jsqlparser.statement.drop.Drop;
/**
 * 用户控制器
 */
@Controller
public class UserController{
	/**
	 * 模拟其他类中跳转到客户管理页面的方法
	 */
	@RequestMapping(value="/toCustomer.action")
	public String toCustomer() {
		return "customer";
	}
	//依赖注入
	@Autowired
	private UserService userService;
	
	/**
	 * 用户登录
	 */
	@RequestMapping(value="/login.action", method = RequestMethod.POST)
	public String login(String usercode, String password,Model model, 
			HttpSession session) {
		System.out.println("登录——————————");
		//通过账户和密码查询用户
		User user = userService.findUser(usercode, password);
		if(user != null) {
			//将用户对象添加到Session
			((ServletRequest) session).setAttribute("USER_SESSION",user);
			//跳转到主页面
			return "main";
		}
		 model.addAttribute("msg", "账号或密码输入错误，请重新输入!");
		 //返回到登录界面
		return "login";
	}

}
