package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.common.utils.DateUtils;
import com.common.utils.base.UuidUtil;
import com.entity.FuJianGuanXiBiao;
import com.repository.FuJianGuanXiBiaoDao;
import com.service.base.BaseServiceImp;

@Service("FuJianGuanXiBiaopriceService")
public class FuJianGuanXiBiaopriceServicelmpl extends BaseServiceImp<FuJianGuanXiBiao> implements FuJianGuanXiBiaopriceService{
	@Autowired
	private FuJianGuanXiBiaoDao fujianguanxibiaodao;
	
	
	/**
	 * 根据附件ID进行判断循环添加
	 * guanlianid 是指对那个表的比如用户的用户ID进行绑定
	 * guanlianbiaoming 直接写入表名String格式进行绑定表
	 * shangchuanren 直接写入是哪个上传，在实现登陆后需根据网页Session进行传递名字
	 */
	@Override
	public void insertfjs(String fjid, String guanlianid,
			String guanlianbiaoming, String shangchuanren) {
		
		if(!fjid.equals("")){
			if(fjid.indexOf(",")>-1){
				String idall[]=fjid.split(",");
				for (int i = 0; i < idall.length; i++) {
					FuJianGuanXiBiao fjgx =new FuJianGuanXiBiao();
					fjgx.setId(UuidUtil.get32UUID());
					fjgx.setShangchaunshijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
					fjgx.setFujianid(idall[i]);
					fjgx.setGuanlianid(guanlianid);
					fjgx.setGuanlianbiaoming(guanlianbiaoming);
					fjgx.setShangchuanren(shangchuanren);
					fujianguanxibiaodao.insert(fjgx);
				}
			}else{
				FuJianGuanXiBiao fjgx =new FuJianGuanXiBiao();
				fjgx.setId(UuidUtil.get32UUID());
				fjgx.setShangchaunshijian(DateUtils.getDate("yyyy/MM/dd HH:mm:ss"));
				fjgx.setFujianid(fjid);
				fjgx.setGuanlianid(guanlianid);
				fjgx.setGuanlianbiaoming(guanlianbiaoming);
				fjgx.setShangchuanren(shangchuanren);
				fujianguanxibiaodao.insert(fjgx);
			}
		}
	}
	
}
