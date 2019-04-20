package com.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.common.mybatis.Page;
import com.entity.User;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserDao extends BaseDao<User>{

	List<User> finddlid(User u);
	List<User> findname(User u);
	public List<User> findshuju(@Param("param")User o,Page<User> page,@Param("ujid")String id);
	List<User> findmin(User u);
	
	/**
	 * 单条查询，方便反馈
	 * @param u
	 */
	User findid(User u);
	
}
