package com.service;

import com.common.mybatis.Page;
import com.entity.XinWenZiXun;
import com.service.base.BaseService;

public interface XinWenZiXunpriceService extends BaseService<XinWenZiXun>{

	Page<XinWenZiXun> finddt(XinWenZiXun xwzx, Page<XinWenZiXun> page,String id);
	
	/**
	 * 添加带附件的新闻咨询
	 * @param o 新闻实体
	 * @param fjid 附件id 由《,》隔开的字符串
	 */
	void insertfj(XinWenZiXun o,String fjid);

	void updateall(XinWenZiXun xwzx, String fjid, String context);
	/**
	 * 单条数据，方便网页接收不必使用循环集合接收
	 * @param o
	 * @return
	 */
	XinWenZiXun finddantiao(XinWenZiXun o);
}
