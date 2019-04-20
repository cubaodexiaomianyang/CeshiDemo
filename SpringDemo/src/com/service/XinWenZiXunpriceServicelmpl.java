package com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.mybatis.Page;
import com.common.utils.DateUtils;
import com.common.utils.base.UuidUtil;
import com.entity.XinWenZiXun;
import com.repository.XinWenZiXunDao;
import com.service.base.BaseServiceImp;
@Service("XinWenZiXunpriceService")
public class XinWenZiXunpriceServicelmpl extends BaseServiceImp<XinWenZiXun> implements XinWenZiXunpriceService{
	
	@Autowired//该注释相当于是GET SET的管理器可以进行GET SET方法的装配
	private XinWenZiXunDao xinwenzixunDao;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoservice;
	@Transactional
	public void insert(XinWenZiXun xwzx){
		xwzx.setLiulancount(0);
		xwzx.setPingluncount(0);
		xwzx.setDianzancount(0);
	    String shijian =DateUtils.getDate("yyyy/MM/dd HH:mm:ss");
	    xwzx.setFabushijian(shijian);
		xinwenzixunDao.insert(xwzx);
	}
	@Override
	public Page<XinWenZiXun> finddt(XinWenZiXun xwzx, Page<XinWenZiXun> page,String Id) {
		page.setResults(xinwenzixunDao.finddt(xwzx, page,Id));
		return page;
	}
	
	
	
	@Transactional
	@Override
	public void insertfj(XinWenZiXun xwzx, String fjid) {
		String zxid=UuidUtil.get32UUID();
		xwzx.setId(zxid);
		xwzx.setLiulancount(0);
		xwzx.setPingluncount(0);
		xwzx.setDianzancount(0);
	    String shijian =DateUtils.getDate("yyyy/MM/dd HH:mm:ss");
	    xwzx.setFabushijian(shijian);
	    xinwenzixunDao.insert(xwzx);
	    fujianguanxibiaoservice.insertfjs(fjid, zxid, "xinwen", "管理员");
	}
	
	@Transactional
	@Override
	public void updateall(XinWenZiXun xwzx, String fjid,String context){
		xwzx.setXinwenneirong(context);
		xinwenzixunDao.update(xwzx);
		fujianguanxibiaoservice.insertfjs(fjid, xwzx.getId(), "xinwen", "管理员");
	}
	@Override
	public XinWenZiXun finddantiao(XinWenZiXun o) {
		return xinwenzixunDao.finddantiao(o);
	}
	
}
