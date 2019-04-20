package com.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.mybatis.Page;
import com.common.utils.base.UuidUtil;
import com.entity.User;
import com.entity.UserHangYeGuanXi;
import com.repository.UserDao;
import com.repository.UserHangYeGuanXiDao;
import com.service.base.BaseServiceImp;

@Service("UserpriceService")
public class UserpriceServicelmpl extends BaseServiceImp<User> implements UserpriceService{
	
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoservice;
	@Autowired
	private UserHangYeGuanXiDao userhangyeguanxidao;
	@Autowired
	private UserDao userdao;
	
	@Transactional
	@Override
	public void insertfj(User jb, UserHangYeGuanXi yhgx,String fjid) {
		String userid=UuidUtil.get32UUID();
		jb.setUserId(userid);
		jb.setUserJifen(0);
		Random random = new Random();
		jb.setDengluId(jb.getUserName()+random.nextInt(1000));//设置了随机数加获取的用户名字为登陆id
		System.out.println("输出获得的登陆id"+jb.getDengluId());
		yhgx.setUserId(jb.getUserId());
		yhgx.setId(UuidUtil.get32UUID());
		fujianguanxibiaoservice.insertfjs(fjid, userid, "user", "管理员");
		userdao.insert(jb);
		userhangyeguanxidao.insert(yhgx);
	}
	
	@Transactional
	@Override
	public void updateall(User us, UserHangYeGuanXi yhgx, String fjid) {
		userdao.update(us);
		userhangyeguanxidao.update(yhgx);
		fujianguanxibiaoservice.insertfjs(fjid, us.getUserId(), "user", "管理员");
	}

	@Override
	public List<User> finddlid(User u) {
		return userdao.finddlid(u);
	}

	@Override
	public List<User> findname(User u) {
		
		return userdao.findname(u);
	}

	@Override
	public Page<User> findshuju(User u, Page<User> page,String id) {
		
		page.setResults(userdao.findshuju(u, page,id));
		return page;
	}

	@Override
	public List<User> findmin(User u) {
		
		return userdao.findmin(u);
	}

	@Override
	public User findid(User u) {
		return userdao.findid(u);
	}

	
	 
}
