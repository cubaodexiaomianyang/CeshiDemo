package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.utils.base.UuidUtil;
import com.entity.UserJob;
import com.repository.UserJobDao;
import com.service.base.BaseServiceImp;

@Service("UserJobpriceService")
public class UserJobpriceServicelmpl extends BaseServiceImp<UserJob> implements UserJobpriceService {
	@Autowired//该注释相当于是GET SET的管理器可以进行GET SET方法的装配
	private UserJobDao userjobDao;
	
	@Transactional
	public void insert(UserJob ser){
		ser.setId(UuidUtil.get32UUID());
		userjobDao.insert(ser);
	}

	
	
	@Override
	@Transactional
	public List<UserJob> find(){
		List<UserJob> uj=userjobDao.find();
	System.out.println("servers的dao接受的值"+uj.get(0));
	return uj;
	}
}
