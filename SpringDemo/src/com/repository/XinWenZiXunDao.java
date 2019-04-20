package com.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.common.mybatis.Page;
import com.entity.XinWenZiXun;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface XinWenZiXunDao extends BaseDao<XinWenZiXun>{
	
	public List<XinWenZiXun> finddt(@Param("param")XinWenZiXun xwzx, Page<XinWenZiXun> page,@Param("Id")String id);
	
	public XinWenZiXun finddantiao(@Param("param")XinWenZiXun o);
}
