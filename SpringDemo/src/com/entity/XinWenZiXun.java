package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("XinWenZiXunprice")
public class XinWenZiXun extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		private String id ;//                  VARCHAR(20),
		private String biaoti            ;//   VARCHAR(100),
		private String  fabushijian       ;//   DATE,
		private String faburen            ;//  VARCHAR(20),
		private String  xinwenneirong      ;//  TEXT,
		private String fengmiantupian     ;//  TEXT,
		private String xinwenlanmuid      ;//  VARCHAR(20),
		private Integer liulancount     ;//  INT,
		private Integer dianzancount  ;// VARCHAR(20),
		private Integer pingluncount ;//VARCHAR(20)
		@Override
		public String toString() {
			return "XinWenZiXun [id=" + id + ", biaoti=" + biaoti
					+ ", fabushijian=" + fabushijian + ", faburen=" + faburen
					+ ", xinwenneirong=" + xinwenneirong + ", fengmiantupian="
					+ fengmiantupian + ", xinwenlanmuid=" + xinwenlanmuid
					+ ", liulancount=" + liulancount + ", dianzancount="
					+ dianzancount + ", pingluncount=" + pingluncount + "]";
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getBiaoti() {
			return biaoti;
		}
		public void setBiaoti(String biaoti) {
			this.biaoti = biaoti;
		}
		public String getFabushijian() {
			return fabushijian;
		}
		public void setFabushijian(String fabushijian) {
			this.fabushijian = fabushijian;
		}
		public String getFaburen() {
			return faburen;
		}
		public void setFaburen(String faburen) {
			this.faburen = faburen;
		}
		public String getXinwenneirong() {
			return xinwenneirong;
		}
		public void setXinwenneirong(String xinwenneirong) {
			this.xinwenneirong = xinwenneirong;
		}
		public String getFengmiantupian() {
			return fengmiantupian;
		}
		public void setFengmiantupian(String fengmiantupian) {
			this.fengmiantupian = fengmiantupian;
		}
		public String getXinwenlanmuid() {
			return xinwenlanmuid;
		}
		public void setXinwenlanmuid(String xinwenlanmuid) {
			this.xinwenlanmuid = xinwenlanmuid;
		}
		public Integer getLiulancount() {
			return liulancount;
		}
		public void setLiulancount(Integer liulancount) {
			this.liulancount = liulancount;
		}
		public Integer getDianzancount() {
			return dianzancount;
		}
		public void setDianzancount(Integer dianzancount) {
			this.dianzancount = dianzancount;
		}
		public Integer getPingluncount() {
			return pingluncount;
		}
		public void setPingluncount(Integer pingluncount) {
			this.pingluncount = pingluncount;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
}
