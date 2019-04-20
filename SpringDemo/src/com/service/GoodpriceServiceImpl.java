package com.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Goodprice;
import com.repository.GoodpriceDao;
import com.service.base.BaseServiceImp;

@Service("GoodpriceService")
public class GoodpriceServiceImpl extends BaseServiceImp<Goodprice> implements GoodpriceService{
	@Autowired//该注释相当于是GET SET的管理器可以进行GET SET方法的装配
	private GoodpriceDao goodpriceDao;
	
	@Override
	@Transactional//代表事务(亦是所谓的面向切面编程，将需要插入的代码或者是功能进行插入编辑)
	public boolean insertprice(Goodprice o){
		// TODO Auto-generated method stub
		o.setCreateTime(new Date());
		String nid=o.getNatureId();
		Goodprice gp=new Goodprice();
		gp.setNatureId(nid);
		List<Goodprice> gps=goodpriceDao.find(gp);
		if (gps.size()>0){
			return false;
		}
		//String goodId=o.getGoodId();
		return true;
	}
	
}
