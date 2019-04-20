package com.service;

import java.util.List;

import com.entity.UserJob;
import com.service.base.BaseService;

public interface UserJobpriceService extends BaseService<UserJob>{
	public List<UserJob> find();
}
