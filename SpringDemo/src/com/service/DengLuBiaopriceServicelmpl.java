package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.entity.DengLuBiao;
import com.repository.DengLuBiaoDao;
import com.service.base.BaseServiceImp;
@Service("DengLuBiaopriceService")
public class DengLuBiaopriceServicelmpl extends BaseServiceImp<DengLuBiao> implements DengLuBiaopriceService{

	@Autowired
	private DengLuBiaoDao dengludao;
	
	@Override
	public int countfj(DengLuBiao dl){
		
		return dengludao.countfj(dl);
	}

}
