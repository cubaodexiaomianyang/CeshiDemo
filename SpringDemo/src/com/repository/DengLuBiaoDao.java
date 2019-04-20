package com.repository;

import com.entity.DengLuBiao;
import com.repository.base.AllBatis;
import com.repository.base.BaseDao;

@AllBatis
public interface DengLuBiaoDao extends BaseDao<DengLuBiao>{

	/**
	 * 统计数目
	 * @param o 对象     
	 * @return long
	 */
	public int countfj(DengLuBiao o);
}
