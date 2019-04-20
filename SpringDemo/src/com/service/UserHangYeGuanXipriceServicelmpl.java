package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.utils.base.UuidUtil;
import com.entity.UserHangYeGuanXi;
import com.repository.UserHangYeGuanXiDao;
import com.service.base.BaseServiceImp;
@Service("UserHangYeGuanXipriceService")
public class UserHangYeGuanXipriceServicelmpl extends BaseServiceImp<UserHangYeGuanXi> implements UserHangYeGuanXipriceService{

	@Autowired
	private UserHangYeGuanXiDao gxdao;
	
	@Transactional
	public void insert(UserHangYeGuanXi ser){
		System.out.println("============================="+UuidUtil.get32UUID());
		ser.setId(UuidUtil.get32UUID());
		gxdao.insert(ser);
	}
}
