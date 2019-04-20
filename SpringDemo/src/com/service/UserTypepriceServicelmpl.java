package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.UserType;
import com.repository.UserTypeDao;
import com.service.base.BaseServiceImp;



@Service("UserTypepriceService")
public class UserTypepriceServicelmpl extends BaseServiceImp<UserType> implements UserTypepriceService{
	@Autowired//该注释相当于是GET SET的管理器可以进行GET SET方法的装配
	private UserTypeDao usertypeDao;
	
	@Override
	@Transactional//切面编程所需
	public List<UserType> find(){
		List<UserType> ut=usertypeDao.find();
		System.out.println("servers的dao接受的值"+ut.get(0));
	return ut;
	}

}
