package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("UserTypeprice")
public class UserType extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		
	private String id  ;//                 VARCHAR(20),
	private String Fenleimingcheng   ;//   VARCHAR(20),
	private String userstate          ;//  VARCHAR(20)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFenleimingcheng() {
		return Fenleimingcheng;
	}
	public void setFenleimingcheng(String fenleimingcheng) {
		this.Fenleimingcheng = fenleimingcheng;
	}
	public String getUserstate() {
		return userstate;
	}
	public void setUserstate(String userstate) {
		this.userstate = userstate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "UserType [id=" + id + ", Fenleimingcheng=" + Fenleimingcheng
				+ ", userstate=" + userstate + "]";
	}
	
}
