package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("ChanPinDuiJieprice")
public class ChanPinDuiJie extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		private String id  ;               //  VARCHAR(20),
		private String userinfo ;           // TEXT,
		private String chanpinId;         // VARCHAR(20),
		private Date checkTime ;         // DATE,
		private String checkType;          //VARCHAR(20)
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getUserinfo() {
			return userinfo;
		}
		public void setUserinfo(String userinfo) {
			this.userinfo = userinfo;
		}
		public String getChanpinId() {
			return chanpinId;
		}
		public void setChanpinId(String chanpinId) {
			this.chanpinId = chanpinId;
		}
		public Date getCheckTime() {
			return checkTime;
		}
		public void setCheckTime(Date checkTime) {
			this.checkTime = checkTime;
		}
		public String getCheckType() {
			return checkType;
		}
		public void setCheckType(String checkType) {
			this.checkType = checkType;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
}
