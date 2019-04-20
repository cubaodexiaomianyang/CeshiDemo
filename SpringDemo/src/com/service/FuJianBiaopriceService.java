package com.service;

import java.util.List;

import com.common.mybatis.Page;
import com.entity.FuJianBiao;
import com.service.base.BaseService;

public interface FuJianBiaopriceService extends BaseService<FuJianBiao>{
	/**
	 * 查询各种表的附件
	 * @param o
	 * @param page
	 * @param biaoming 标明是哪个表的列如用户，新闻或者是别的
	 * @param guanlianid 关联ID进行查询
	 * @return
	 */
	public Page<FuJianBiao> findByPagefj(FuJianBiao o,Page<FuJianBiao> page,String biaoming,String guanlianid);
	/**
	 * 首页根据状态进行查询首页的图片
	 * @param fjb
	 * @return
	 */
	public List<FuJianBiao> findstate(FuJianBiao fjb);
}
