package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("GuanYuWoMenprice")
public class GuanYuWoMen extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String jianjie;
	private String zhidu;
	private String tuandui;
	private String goujia;
	private String lianxi;
	@Override
	public String toString() {
		return "GuanYuWoMen [id=" + id + ", jianjie=" + jianjie + ", zhidu="
				+ zhidu + ", tuandui=" + tuandui + ", goujia=" + goujia
				+ ", lianxi=" + lianxi + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getZhidu() {
		return zhidu;
	}
	public void setZhidu(String zhidu) {
		this.zhidu = zhidu;
	}
	public String getTuandui() {
		return tuandui;
	}
	public void setTuandui(String tuandui) {
		this.tuandui = tuandui;
	}
	public String getGoujia() {
		return goujia;
	}
	public void setGoujia(String goujia) {
		this.goujia = goujia;
	}
	public String getLianxi() {
		return lianxi;
	}
	public void setLianxi(String lianxi) {
		this.lianxi = lianxi;
	}
}
