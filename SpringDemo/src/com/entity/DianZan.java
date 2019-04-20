package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("DianZanprice")
public class DianZan extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		private String id;                 //  VARCHAR(20),
		private String userid ;            //  VARCHAR(20),
		private String dianzanduixiangid;   // VARCHAR(20),
		private String dianzanbiaoming;    //  VARCHAR(20),
		private Date dianzanshijian ;//      DATE
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getUserid() {
			return userid;
		}
		public void setUserid(String userid) {
			this.userid = userid;
		}
		public String getDianzanduixiangid() {
			return dianzanduixiangid;
		}
		public void setDianzanduixiangid(String dianzanduixiangid) {
			this.dianzanduixiangid = dianzanduixiangid;
		}
		public String getDianzanbiaoming() {
			return dianzanbiaoming;
		}
		public void setDianzanbiaoming(String dianzanbiaoming) {
			this.dianzanbiaoming = dianzanbiaoming;
		}
		public Date getDianzanshijian() {
			return dianzanshijian;
		}
		public void setDianzanshijian(Date dianzanshijian) {
			this.dianzanshijian = dianzanshijian;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
}
