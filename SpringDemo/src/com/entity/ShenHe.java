package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("ShenHeprice")
public class ShenHe extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String  id;// NVARCHAR(120) NOT NULL COMMENT '审核id',
	private Integer shenhecishu ;        // INT COMMENT '审核次数',
	private String shenheshijian;      //  NVARCHAR(50) COMMENT '审核时间',
	private String bohuiyuanyin  ;     //  NVARCHAR(1000)  COMMENT '审核驳回的原因',
	private String shenhezhaungtai;   //NVARCHAR(50) COMMENT '审核状态',
	private String shenheChanpinId;

	public String getShenheChanpinId() {
		return shenheChanpinId;
	}
	public void setShenheChanpinId(String shenheChanpinId) {
		this.shenheChanpinId = shenheChanpinId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Integer getShenhecishu() {
		return shenhecishu;
	}
	public void setShenhecishu(Integer shenhecishu) {
		this.shenhecishu = shenhecishu;
	}
	public String getShenheshijian() {
		return shenheshijian;
	}
	public void setShenheshijian(String shenheshijian) {
		this.shenheshijian = shenheshijian;
	}
	public String getBohuiyuanyin() {
		return bohuiyuanyin;
	}
	public void setBohuiyuanyin(String bohuiyuanyin) {
		this.bohuiyuanyin = bohuiyuanyin;
	}
	public String getShenhezhaungtai() {
		return shenhezhaungtai;
	}
	public void setShenhezhaungtai(String shenhezhaungtai) {
		this.shenhezhaungtai = shenhezhaungtai;
	}
	@Override
	public String toString() {
		return "ShenHe [id=" + id + ", shenhecishu=" + shenhecishu
				+ ", shenheshijian=" + shenheshijian + ", bohuiyuanyin="
				+ bohuiyuanyin + ", shenhezhaungtai=" + shenhezhaungtai
				+ ", shenheChanpinId=" + shenheChanpinId + "]";
	}
	
}
