package com.service;

import com.entity.FuJianGuanXiBiao;
import com.service.base.BaseService;

public interface FuJianGuanXiBiaopriceService extends BaseService<FuJianGuanXiBiao>{
	void insertfjs(String fjid,String guanlianid,String guanlianbiaoming,String shangchuanren);
}
