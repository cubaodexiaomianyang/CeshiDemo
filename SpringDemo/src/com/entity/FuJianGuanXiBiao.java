package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("FuJianGuanXiBiaoprice")
public class FuJianGuanXiBiao extends BaseEntity{
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;//                   VARCHAR(20),id 
	private String fujianid;//             VARCHAR(20),附件ID
	private String fujiantype;//           VARCHAR(20),附件；类型
	private String guanlianid;//           VARCHAR(20),关联id
	private String guanlianbiaoming;//     VARCHAR(20),关联的，表名字
	private String shangchuanren;//       VARCHAR(20),上传人
	private String shangchaunshijian ;//   DATE,时间
	private String beizhuxinxi  ;//        TEXT,备注信息
	private String urlxinxi    ;//         TEXT路径
	@Override
	public String toString() {
		return "FuJianGuanXiBiao [id=" + id + ", fujianid=" + fujianid
				+ ", fujiantype=" + fujiantype + ", guanlianid=" + guanlianid
				+ ", guanlianbiaoming=" + guanlianbiaoming + ", shangchuanren="
				+ shangchuanren + ", shangchaunshijian=" + shangchaunshijian
				+ ", beizhuxinxi=" + beizhuxinxi + ", urlxinxi=" + urlxinxi
				+ "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFujianid() {
		return fujianid;
	}
	public void setFujianid(String fujianid) {
		this.fujianid = fujianid;
	}
	public String getFujiantype() {
		return fujiantype;
	}
	public void setFujiantype(String fujiantype) {
		this.fujiantype = fujiantype;
	}
	public String getGuanlianid() {
		return guanlianid;
	}
	public void setGuanlianid(String guanlianid) {
		this.guanlianid = guanlianid;
	}
	public String getGuanlianbiaoming() {
		return guanlianbiaoming;
	}
	public void setGuanlianbiaoming(String guanlianbiaoming) {
		this.guanlianbiaoming = guanlianbiaoming;
	}
	public String getShangchuanren() {
		return shangchuanren;
	}
	public void setShangchuanren(String shangchuanren) {
		this.shangchuanren = shangchuanren;
	}
	public String getShangchaunshijian() {
		return shangchaunshijian;
	}
	public void setShangchaunshijian(String shangchaunshijian) {
		this.shangchaunshijian = shangchaunshijian;
	}
	public String getBeizhuxinxi() {
		return beizhuxinxi;
	}
	public void setBeizhuxinxi(String beizhuxinxi) {
		this.beizhuxinxi = beizhuxinxi;
	}
	public String getUrlxinxi() {
		return urlxinxi;
	}
	public void setUrlxinxi(String urlxinxi) {
		this.urlxinxi = urlxinxi;
	}

}
