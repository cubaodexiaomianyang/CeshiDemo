package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("Userprice")
public class User extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private String userId;		//           VARCHAR(30) NOT NULL,
		private String  userName           ;// VARCHAR(30),
		private String phone               ;// VARCHAR(30),
		private Integer userJifen          ;// INT,
		private String dengluId           ;// VARCHAR(30),
		
		//追加字段
		private String suoshugongsiname;
		private String gongsijianjie;
		private String createtime;
		
		//虚拟字段
		private String fenleimingcheng;
		private String jobmingzi;
		private String img;
		@Override
		public String toString() {
			return "User [userId=" + userId + ", userName=" + userName
					+ ", phone=" + phone + ", userJifen=" + userJifen
					+ ", dengluId=" + dengluId + ", suoshugongsiname="
					+ suoshugongsiname + ", gongsijianjie=" + gongsijianjie
					+ ", createtime=" + createtime + ", fenleimingcheng="
					+ fenleimingcheng + ", jobmingzi=" + jobmingzi + "]";
		}
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}

		public String getSuoshugongsiname() {
			return suoshugongsiname;
		}

		public void setSuoshugongsiname(String suoshugongsiname) {
			this.suoshugongsiname = suoshugongsiname;
		}

		public String getGongsijianjie() {
			return gongsijianjie;
		}

		public void setGongsijianjie(String gongsijianjie) {
			this.gongsijianjie = gongsijianjie;
		}

		public String getCreatetime() {
			return createtime;
		}

		public void setCreatetime(String createtime) {
			this.createtime = createtime;
		}

		public String getFenleimingcheng() {
			return fenleimingcheng;
		}

		public void setFenleimingcheng(String fenleimingcheng) {
			this.fenleimingcheng = fenleimingcheng;
		}

		public String getJobmingzi() {
			return jobmingzi;
		}

		public void setJobmingzi(String jobmingzi) {
			this.jobmingzi = jobmingzi;
		}

		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public Integer getUserJifen() {
			return userJifen;
		}
		public void setUserJifen(Integer userJifen) {
			this.userJifen = userJifen;
		}
		public String getDengluId() {
			return dengluId;
		}
		public void setDengluId(String dengluId) {
			this.dengluId = dengluId;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		
}
