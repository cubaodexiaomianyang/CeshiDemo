package com.service;
import com.entity.XinWenLanMuBiao;
import com.entity.ZongBanKuai;
import com.service.base.BaseService;

public interface XinWenLanMuBiaopriceService extends BaseService<XinWenLanMuBiao>{
	/**
	 * 带附件的插入
	 * @param lanm 栏目实体
	 * @param id id字符串，由附件上传提供
	 */
	void updateall(XinWenLanMuBiao xwlm, String fjid);

	void insertfj(XinWenLanMuBiao xwlm, String fjid, ZongBanKuai zk);
}
