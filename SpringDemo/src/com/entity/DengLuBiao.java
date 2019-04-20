package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("DengLuBiaoprice")
public class DengLuBiao extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		private String id ;                 // VARCHAR(20),
		private String dengluid;             //VARCHAR(20),
		private String PASSWORD;             //VARCHAR(20),
		private String psdjiami;            // VARCHAR(20),
		private String lastdenglushijian;    //DATE,
		private String dengluIP;             //TEXT
		
		//虚拟字段
		private String email;
		@Override
		public String toString() {
			return "DengLuBiao [id=" + id + ", dengluid=" + dengluid
					+ ", PASSWORD=" + PASSWORD + ", psdjiami=" + psdjiami
					+ ", lastdenglushijian=" + lastdenglushijian
					+ ", dengluIP=" + dengluIP + "]";
		}
		
		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getDengluid() {
			return dengluid;
		}
		public void setDengluid(String dengluid) {
			this.dengluid = dengluid;
		}
		public String getPASSWORD() {
			return PASSWORD;
		}
		public void setPASSWORD(String pASSWORD) {
			PASSWORD = pASSWORD;
		}
		public String getPsdjiami() {
			return psdjiami;
		}
		public void setPsdjiami(String psdjiami) {
			this.psdjiami = psdjiami;
		}
		public String getLastdenglushijian() {
			return lastdenglushijian;
		}
		public void setLastdenglushijian(String lastdenglushijian) {
			this.lastdenglushijian = lastdenglushijian;
		}
		public String getDengluIP() {
			return dengluIP;
		}
		public void setDengluIP(String dengluIP) {
			this.dengluIP = dengluIP;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
}
