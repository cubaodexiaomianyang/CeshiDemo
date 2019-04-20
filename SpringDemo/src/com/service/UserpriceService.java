package com.service;


import java.util.List;

import com.common.mybatis.Page;
import com.entity.User;
import com.entity.UserHangYeGuanXi;
import com.service.base.BaseService;

public interface UserpriceService extends BaseService<User>{

	void insertfj(User jb, UserHangYeGuanXi yhgx, String fjid);
	
	void updateall(User jb, UserHangYeGuanXi yhgx, String fjid);

	List<User> finddlid(User u);
	
	List<User> findname(User u);

	List<User> findmin(User u);
	
	Page<User> findshuju(User u, Page<User> page,String id);
	
	User findid(User u);
}
