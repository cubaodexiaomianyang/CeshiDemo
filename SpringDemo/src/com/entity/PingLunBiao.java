package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("PingLunBiaoprice")
public class PingLunBiao extends BaseEntity{
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private String id ;//                  VARCHAR(20),
		private String userId        ;//       VARCHAR(20),
		private String pinglunduixiang ;//     VARCHAR(20),
		private String pinglunbiaoming ;//     VARCHAR(20),
		private Date pinglunshijian  ;//     DATE,
		private String pinglunneirong  ;//     TEXT,
		private String pinglunpinglunid ;//    VARCHAR(20)
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getPinglunduixiang() {
			return pinglunduixiang;
		}
		public void setPinglunduixiang(String pinglunduixiang) {
			this.pinglunduixiang = pinglunduixiang;
		}
		public String getPinglunbiaoming() {
			return pinglunbiaoming;
		}
		public void setPinglunbiaoming(String pinglunbiaoming) {
			this.pinglunbiaoming = pinglunbiaoming;
		}
		public Date getPinglunshijian() {
			return pinglunshijian;
		}
		public void setPinglunshijian(Date pinglunshijian) {
			this.pinglunshijian = pinglunshijian;
		}
		public String getPinglunneirong() {
			return pinglunneirong;
		}
		public void setPinglunneirong(String pinglunneirong) {
			this.pinglunneirong = pinglunneirong;
		}
		public String getPinglunpinglunid() {
			return pinglunpinglunid;
		}
		public void setPinglunpinglunid(String pinglunpinglunid) {
			this.pinglunpinglunid = pinglunpinglunid;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
}
