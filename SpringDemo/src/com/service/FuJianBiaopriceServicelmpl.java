package com.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.mybatis.Page;
import com.entity.FuJianBiao;
import com.repository.FuJianBiaoDao;
import com.service.base.BaseServiceImp;

@Service("FuJianBiaopriceService")
public class FuJianBiaopriceServicelmpl extends BaseServiceImp<FuJianBiao> implements FuJianBiaopriceService{

	@Autowired
	private FuJianBiaoDao fujianbiaodao;
	
	@Override
	public Page<FuJianBiao> findByPagefj(FuJianBiao o, Page<FuJianBiao> page,
			String biaoming, String guanlianid) {
		page.setResults(fujianbiaodao.findByPagefj(o, page,biaoming,guanlianid));
		return page;
	}
	
	@Override
	public List<FuJianBiao> findstate(FuJianBiao fjb) {
		
		return fujianbiaodao.findstate(fjb);
	}
}
