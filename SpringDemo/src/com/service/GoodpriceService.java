package com.service;

import com.entity.Goodprice;
import com.service.base.BaseService;

public interface GoodpriceService extends BaseService<Goodprice>{
	public boolean insertprice(Goodprice o);
}
