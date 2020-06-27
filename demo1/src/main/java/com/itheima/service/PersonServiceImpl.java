package com.itheima.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itheima.dao.PersonDao;
import com.itheima.po.Person;
@Service
@Transactional
public class PersonServiceImpl implements PersonService {
	//注解注入PersonDao
	@Autowired
	private PersonDao pesonDao;
	//查询客户
	public Person findPersonbyid(int id) {
		return this.pesonDao.findPersonbyid(id);
	}

}
