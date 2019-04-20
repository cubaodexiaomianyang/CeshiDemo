package com.repository;

import java.util.List;

import com.entity.UserType;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserTypeDao extends BaseDao<UserType>{
	public List<UserType> find();
}
