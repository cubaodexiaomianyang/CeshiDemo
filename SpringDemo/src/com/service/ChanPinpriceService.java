package com.service;


import javax.servlet.http.HttpServletRequest;


import com.common.mybatis.Page;
import com.entity.ChanPin;
import com.entity.ShenHe;
import com.entity.UserJob;
import com.service.base.BaseService;

public interface ChanPinpriceService extends BaseService< ChanPin>{

	void deleteall(String id);

	void deleteplall(String id);

	void insertall(ChanPin cp, String fjid, UserJob job,HttpServletRequest request);

	void updateall(ChanPin cp, String fjid, UserJob job, ShenHe sh,
			HttpServletRequest request);
	
	 ChanPin findid(ChanPin o);
	 
	 Page<ChanPin> findByPagetj(ChanPin o,Page<ChanPin> page);
	 
	 Page<ChanPin> findByPagesh(ChanPin o,Page<ChanPin> page);
}
