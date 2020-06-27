package com.itheima.dao;

import java.util.List;

import com.itheima.po.Person;


public interface EmpMapper {
	 //查询所有的方法
	List<Person> findAll();
}
