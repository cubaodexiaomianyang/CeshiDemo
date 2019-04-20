package com.repository;

import java.util.List;

import com.entity.UserJob;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface UserJobDao extends BaseDao<UserJob>{
	public List<UserJob> find();
}
