package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("UserHangYeGuanXiprice")
public class UserHangYeGuanXi extends BaseEntity{
	
	   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
		private String id;				//VARCHAR(20),
		private String userhangyeid;    // VARCHAR(20),
		private String userId;          // VARCHAR(20),
		private String userfenleiid;    // VARCHAR(20)
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getUserhangyeid() {
			return userhangyeid;
		}
		public void setUserhangyeid(String userhangyeid) {
			this.userhangyeid = userhangyeid;
		}
		public String getUserId() {
			return userId;
		}
		public void setUserId(String userId) {
			this.userId = userId;
		}
		public String getUserfenleiid() {
			return userfenleiid;
		}
		public void setUserfenleiid(String userfenleiid) {
			this.userfenleiid = userfenleiid;
		}
		public static long getSerialversionuid() {
			return serialVersionUID;
		}
		@Override
		public String toString() {
			return "UserHangYeGuanXi [id=" + id + ", userhangyeid="
					+ userhangyeid + ", userId=" + userId + ", userfenleiid="
					+ userfenleiid + "]";
		}
		
	
}
