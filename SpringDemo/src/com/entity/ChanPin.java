package com.entity;

import org.apache.ibatis.type.Alias;
@Alias("ChanPinprice")
public class ChanPin extends BaseEntity{
	

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String chanpinId;			//  VARCHAR(20) NOT NULL,
	 private String img;				// VARCHAR(100),
	 private String biaoti;             // VARCHAR(20),
	 private String shixian;             //  DATE,
	 private String jianjie ;            // TEXT,
	 private String tiaojian;           // TEXT,
	 private String liucheng;            // TEXT,
	 private String lianxiwomen;        // VARCHAR(100),
	 private String chanpingfenleiid;      // VARCHAR(100),套用的行业分类进行展示
	 private String faburen;              //VARCHAR(100),
	 private String chanpinfabushijian;  // DATE,
	 
	 //追加字段(前端）
	 private Integer jine;				//产品金额
	 private String gongsiguimo;		//公司规模		
	 private String rongzizhouqi;		//融资周期
	 private String lianxibumen;		//联系部门
	 
	 //虚拟字段审核次数
	 private Integer shenhecishu;         // 审核次数
	 private String shenhezhuangtai;       // 审核状态(是否通过等)
	 private String bohuiyuanyin;       // 驳回原因(是否通过来判断)
	 private String chanpingfenlei;       //分类的名称
	
	@Override
	public String toString() {
		return "ChanPin [chanpinId=" + chanpinId + ", img=" + img + ", biaoti="
				+ biaoti + ", shixian=" + shixian + ", jianjie=" + jianjie
				+ ", tiaojian=" + tiaojian + ", liucheng=" + liucheng
				+ ", lianxiwomen=" + lianxiwomen + ", chanpingfenleiid="
				+ chanpingfenleiid + ", faburen=" + faburen
				+ ", chanpinfabushijian=" + chanpinfabushijian + ", jine="
				+ jine + ", gongsiguimo=" + gongsiguimo + ", rongzizhouqi="
				+ rongzizhouqi + ", lianxibumen=" + lianxibumen + "]";
	}
	public String getGongsiguimo() {
		return gongsiguimo;
	}
	public void setGongsiguimo(String gongsiguimo) {
		this.gongsiguimo = gongsiguimo;
	}
	public String getRongzizhouqi() {
		return rongzizhouqi;
	}
	public void setRongzizhouqi(String rongzizhouqi) {
		this.rongzizhouqi = rongzizhouqi;
	}
	public String getLianxibumen() {
		return lianxibumen;
	}
	public void setLianxibumen(String lianxibumen) {
		this.lianxibumen = lianxibumen;
	}

	public Integer getJine() {
		return jine;
	}
	public void setJine(Integer jine) {
		this.jine = jine;
	}
	public String getChanpinId() {
		return chanpinId;
	}
	public void setChanpinId(String chanpinId) {
		this.chanpinId = chanpinId;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getBiaoti() {
		return biaoti;
	}
	public void setBiaoti(String biaoti) {
		this.biaoti = biaoti;
	}
	public String getShixian() {
		return shixian;
	}
	public void setShixian(String shixian) {
		this.shixian = shixian;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getTiaojian() {
		return tiaojian;
	}
	public void setTiaojian(String tiaojian) {
		this.tiaojian = tiaojian;
	}
	public String getLiucheng() {
		return liucheng;
	}
	public void setLiucheng(String liucheng) {
		this.liucheng = liucheng;
	}
	public String getLianxiwomen() {
		return lianxiwomen;
	}
	public void setLianxiwomen(String lianxiwomen) {
		this.lianxiwomen = lianxiwomen;
	}
	public String getChanpingfenleiid() {
		return chanpingfenleiid;
	}
	public void setChanpingfenleiid(String chanpingfenleiid) {
		this.chanpingfenleiid = chanpingfenleiid;
	}
	public String getFaburen() {
		return faburen;
	}
	public void setFaburen(String faburen) {
		this.faburen = faburen;
	}
	public String getChanpinfabushijian() {
		return chanpinfabushijian;
	}
	public void setChanpinfabushijian(String chanpinfabushijian) {
		this.chanpinfabushijian = chanpinfabushijian;
	}
	public Integer getShenhecishu() {
		return shenhecishu;
	}
	public void setShenhecishu(Integer shenhecishu) {
		this.shenhecishu = shenhecishu;
	}
	
	
	public String getShenhezhuangtai() {
		return shenhezhuangtai;
	}
	public void setShenhezhuangtai(String shenhezhuangtai) {
		this.shenhezhuangtai = shenhezhuangtai;
	}
	public String getBohuiyuanyin() {
		return bohuiyuanyin;
	}
	public void setBohuiyuanyin(String bohuiyuanyin) {
		this.bohuiyuanyin = bohuiyuanyin;
	}
	public String getChanpingfenlei() {
		return chanpingfenlei;
	}
	public void setChanpingfenlei(String chanpingfenlei) {
		this.chanpingfenlei = chanpingfenlei;
	}

	
}
