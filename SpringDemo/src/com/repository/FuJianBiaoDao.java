package com.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.common.mybatis.Page;
import com.entity.FuJianBiao;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface FuJianBiaoDao extends BaseDao<FuJianBiao>{
	/**
	 * 查询各种表的附件
	 * @param o
	 * @param page
	 * @param biaoming 标明是哪个表的列如用户，新闻或者是别的
	 * @param guanlianid 关联ID进行查询
	 * @return
	 */
	public List<FuJianBiao> findByPagefj(@Param("param")FuJianBiao o,Page<FuJianBiao> page,@Param("guanlianbiaoming")String biaoming,@Param("guanlianid")String guanlianid);

	public List<FuJianBiao> findstate(@Param("param")FuJianBiao fjb);
}
