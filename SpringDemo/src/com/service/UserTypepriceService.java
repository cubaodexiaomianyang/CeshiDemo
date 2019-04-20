package com.service;

import java.util.List;

import com.entity.UserType;
import com.service.base.BaseService;

public interface UserTypepriceService extends BaseService<UserType>{
	public List<UserType> find();
}
