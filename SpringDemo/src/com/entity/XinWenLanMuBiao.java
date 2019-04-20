package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("XinWenLanMuprice")
public class XinWenLanMuBiao extends BaseEntity{
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;//                   VARCHAR(20),
	private String  lanmumingcheng  ;//     VARCHAR(20),
	private String createTime     ;//     DATE,
	private String  lanmufengmian    ;//    
	private String urlweizhi        ;//  
	private String zongbankuaiid;
	
	//虚拟字段
	private String zongbankuaiName;
	
	public String getZongbankuaiName() {
		return zongbankuaiName;
	}
	public void setZongbankuaiName(String zongbankuaiName) {
		this.zongbankuaiName = zongbankuaiName;
	}
	@Override
	public String toString() {
		return "XinWenLanMuBiao [id=" + id + ", lanmumingcheng="
				+ lanmumingcheng + ", createTime=" + createTime
				+ ", lanmufengmian=" + lanmufengmian + ", urlweizhi="
				+ urlweizhi + ", zongbankuaiid=" + zongbankuaiid + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLanmumingcheng() {
		return lanmumingcheng;
	}
	public void setLanmumingcheng(String lanmumingcheng) {
		this.lanmumingcheng = lanmumingcheng;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public String getLanmufengmian() {
		return lanmufengmian;
	}
	public void setLanmufengmian(String lanmufengmian) {
		this.lanmufengmian = lanmufengmian;
	}
	public String getUrlweizhi() {
		return urlweizhi;
	}
	public void setUrlweizhi(String urlweizhi) {
		this.urlweizhi = urlweizhi;
	}
	public String getZongbankuaiid() {
		return zongbankuaiid;
	}
	public void setZongbankuaiid(String zongbankuaiid) {
		this.zongbankuaiid = zongbankuaiid;
	}
	
}
