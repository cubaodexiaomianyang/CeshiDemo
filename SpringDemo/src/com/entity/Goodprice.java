package com.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.entity.BaseEntity;

@Alias("BaseGoodprice")
public class Goodprice extends BaseEntity{
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String goodId;
	private String specId;
	private String natureId;
	private String sinmb;
	private String miaoshu;
	private String nowprice;
	private String price;
	private String number;
	private Date createTime;
	private String pic;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getGoodId() {
		return goodId;
	}
	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}
	public String getSpecId() {
		return specId;
	}
	public void setSpecId(String specId) {
		this.specId = specId;
	}
	public String getNatureId() {
		return natureId;
	}
	public void setNatureId(String natureId) {
		this.natureId = natureId;
	}
	public String getSinmb() {
		return sinmb;
	}
	public void setSinmb(String sinmb) {
		this.sinmb = sinmb;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}
	public String getNowprice() {
		return nowprice;
	}
	public void setNowprice(String nowprice) {
		this.nowprice = nowprice;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	
	
}
