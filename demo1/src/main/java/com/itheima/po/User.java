<<<<<<< HEAD
package com.itheima.po;
import java.io.Serializable;
/**
 * 用户持久化类
 */
public class User implements Serializable{
	private static final long serialVersionID = 1L;
	private Integer user_id;         //用户id
	private String user_code;        //用户账号
	private String user_name;        //用户名称
	private String user_password;    //用户密码
	private Integer user_state;      //用户状态
	public Integer getUser_id(){
		return user_id;
	}
	public String getUser_code() {
		return user_code;
	}
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public Integer getUser_state() {
		return user_state;
	}
	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}
}
=======
package com.itheima.po;

public class User {
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}

	private int id;
	private String username;
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}

	public User() {
		super();
	}

}
>>>>>>> refs/remotes/origin/master
