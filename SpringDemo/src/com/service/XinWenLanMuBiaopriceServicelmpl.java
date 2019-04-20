package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.common.utils.DateUtils;
import com.common.utils.base.UuidUtil;
import com.entity.FuJianBiao;
import com.entity.XinWenLanMuBiao;
import com.entity.ZongBanKuai;
import com.repository.FuJianBiaoDao;
import com.repository.XinWenLanMuBiaoDao;
import com.service.base.BaseServiceImp;
@Service("XinWenLanMuBiaopriceService")
public class XinWenLanMuBiaopriceServicelmpl extends BaseServiceImp<XinWenLanMuBiao> implements XinWenLanMuBiaopriceService{
	
	@Autowired
	private XinWenLanMuBiaoDao xinwenlanmubiaodao;
	@Autowired
	private FuJianGuanXiBiaopriceService fujianguanxibiaoservice;
	@Autowired
	private FuJianBiaoDao fujianbiaodao;
	
	@Transactional
	@Override
	public void insertfj(XinWenLanMuBiao lanm, String fjid,ZongBanKuai zk) {
		System.out.println("进入serv层的添加方法");
		String lmid=UuidUtil.get32UUID();
		lanm.setId(lmid);
		lanm.setCreateTime(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
		//相对附件的查询
		FuJianBiao fj=new FuJianBiao();
		fj.setId(fjid);
		List<FuJianBiao> f=fujianbiaodao.find(fj);
		
		lanm.setLanmufengmian(f.get(0).getFujianmingcheng());
		lanm.setUrlweizhi(f.get(0).getFujianlujing());
		System.out.println("输出Servi层的附件板块id"+zk.getId());
		lanm.setZongbankuaiid(zk.getId());
		
		System.out.println("添加前的栏目信息=="+lanm);
		xinwenlanmubiaodao.insert(lanm);
		fujianguanxibiaoservice.insertfjs(fjid, lmid, "xinwenlanmu", "管理员");
	}
	
	@Transactional
	@Override
	public void updateall(XinWenLanMuBiao xwlm,String fjid) {
		
		xinwenlanmubiaodao.update(xwlm);
		fujianguanxibiaoservice.insertfjs(fjid, xwlm.getId(), "xinwenlanmu", "管理员");
	}

}
