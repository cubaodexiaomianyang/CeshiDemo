package com.repository;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.common.mybatis.Page;
import com.entity.ChanPin;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface ChanPinDao extends BaseDao<ChanPin>{

	public ChanPin findid(@Param("param")ChanPin o);
	
	public List<ChanPin> findByPagetj(@Param("param")ChanPin o,Page<ChanPin> page);
	
	public List<ChanPin> findByPagesh(@Param("param")ChanPin o,Page<ChanPin> page);
}	
