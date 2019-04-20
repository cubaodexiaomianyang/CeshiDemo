package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("ZongBanKuaiprice")
public class ZongBanKuai extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String id;
	private String bankuaiming;
	private String createtime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBankuaiming() {
		return bankuaiming;
	}
	public void setBankuaiming(String bankuaiming) {
		this.bankuaiming = bankuaiming;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	@Override
	public String toString() {
		return "ZongBanKuai [id=" + id + ", bankuaiming=" + bankuaiming
				+ ", createtime=" + createtime + "]";
	}
}
