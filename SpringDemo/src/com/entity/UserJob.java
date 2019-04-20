package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("UserJobprice")
public class UserJob extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String id ;//                  VARCHAR(20),
	private String jobmingzi       ;//     VARCHAR(50),
	private String jobstate         ;//    VARCHAR(20),
	private String shangjihangye    ;//    VARCHAR(20)
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getJobmingzi() {
		return jobmingzi;
	}
	public void setJobmingzi(String jobmingzi) {
		this.jobmingzi = jobmingzi;
	}
	public String getJobstate() {
		return jobstate;
	}
	public void setJobstate(String jobstate) {
		this.jobstate = jobstate;
	}
	public String getShangjihangye() {
		return shangjihangye;
	}
	public void setShangjihangye(String shangjihangye) {
		this.shangjihangye = shangjihangye;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "UserJob [id=" + id + ", jobmingzi=" + jobmingzi + ", jobstate="
				+ jobstate + ", shangjihangye=" + shangjihangye + "]";
	}
	
}
