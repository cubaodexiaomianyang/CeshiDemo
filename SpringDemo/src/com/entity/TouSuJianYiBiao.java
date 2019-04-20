package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("TouSuJianYiBiaoprice")
public class TouSuJianYiBiao extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		
	private String 	id ;//                  VARCHAR(20),
	private String toushuren        ;//    VARCHAR(20),
	private String  toushuneirong   ;//     TEXT,
	private String  beitoushuren    ;//     VARCHAR(20),
	private String  shifouniming    ;//     VARCHAR(20),
	private String  toushushijian   ;//     DATE,
	private String  toushuzhuangtai  ;//    VARCHAR(20)
	private String pingjia;
	private Integer pingfen;
	
	public String getPingjia() {
		return pingjia;
	}
	public void setPingjia(String pingjia) {
		this.pingjia = pingjia;
	}
	public Integer getPingfen() {
		return pingfen;
	}
	public void setPingfen(Integer pingfen) {
		this.pingfen = pingfen;
	}
	public String getToushushijian() {
		return toushushijian;
	}
	public void setToushushijian(String toushushijian) {
		this.toushushijian = toushushijian;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getToushuren() {
		return toushuren;
	}
	public void setToushuren(String toushuren) {
		this.toushuren = toushuren;
	}
	public String getToushuneirong() {
		return toushuneirong;
	}
	public void setToushuneirong(String toushuneirong) {
		this.toushuneirong = toushuneirong;
	}
	public String getBeitoushuren() {
		return beitoushuren;
	}
	public void setBeitoushuren(String beitoushuren) {
		this.beitoushuren = beitoushuren;
	}
	public String getShifouniming() {
		return shifouniming;
	}
	public void setShifouniming(String shifouniming) {
		this.shifouniming = shifouniming;
	}
	public String getToushuzhuangtai() {
		return toushuzhuangtai;
	}
	public void setToushuzhuangtai(String toushuzhuangtai) {
		this.toushuzhuangtai = toushuzhuangtai;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "TouSuJianYiBiao [id=" + id + ", toushuren=" + toushuren
				+ ", toushuneirong=" + toushuneirong + ", beitoushuren="
				+ beitoushuren + ", shifouniming=" + shifouniming
				+ ", toushushijian=" + toushushijian + ", toushuzhuangtai="
				+ toushuzhuangtai + ", pingjia=" + pingjia + ", pingfen="
				+ pingfen + "]";
	}
	
}
