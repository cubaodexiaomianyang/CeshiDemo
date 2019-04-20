package com.entity;

import org.apache.ibatis.type.Alias;

@Alias("FuJianBiaoprice")
public class FuJianBiao extends BaseEntity{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private String id;           //       VARCHAR(20),
		private String  fujianmingcheng;//     VARCHAR(20),
		private String fujianwenjianming;//    VARCHAR(20),
		private String fujianhouzhui;//        VARCHAR(20),
		private String fujiandaxiao ;//        VARCHAR(20),
		private String fujianlujing ;//        TEXT,
		private String fujianqitalujing;//     TEXT,
		private String  shangchuanshijian ;//   DATE,
		private Integer xiazhaicishu ;//        INT,
		private String fujianstate ;//         VARCHAR(20)
		
		//虚拟字段
		private String guanlianbiaoming;
		private String guanlianid;
		
		public String getGuanlianbiaoming() {
			return guanlianbiaoming;
		}
		public void setGuanlianbiaoming(String guanlianbiaoming) {
			this.guanlianbiaoming = guanlianbiaoming;
		}
		public String getGuanlianid() {
			return guanlianid;
		}
		public void setGuanlianid(String guanlianid) {
			this.guanlianid = guanlianid;
		}
		@Override
		public String toString() {
			return "FuJianBiao [id=" + id + ", fujianmingcheng="
					+ fujianmingcheng + ", fujianwenjianming="
					+ fujianwenjianming + ", fujianhouzhui=" + fujianhouzhui
					+ ", fujiandaxiao=" + fujiandaxiao + ", fujianlujing="
					+ fujianlujing + ", fujianqitalujing=" + fujianqitalujing
					+ ", shangchuanshijian=" + shangchuanshijian
					+ ", xiazhaicishu=" + xiazhaicishu + ", fujianstate="
					+ fujianstate + "]";
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getFujianmingcheng() {
			return fujianmingcheng;
		}
		public void setFujianmingcheng(String fujianmingcheng) {
			this.fujianmingcheng = fujianmingcheng;
		}
		public String getFujianwenjianming() {
			return fujianwenjianming;
		}
		public void setFujianwenjianming(String fujianwenjianming) {
			this.fujianwenjianming = fujianwenjianming;
		}
		public String getFujianhouzhui() {
			return fujianhouzhui;
		}
		public void setFujianhouzhui(String fujianhouzhui) {
			this.fujianhouzhui = fujianhouzhui;
		}
		public String getFujiandaxiao() {
			return fujiandaxiao;
		}
		public void setFujiandaxiao(String fujiandaxiao) {
			this.fujiandaxiao = fujiandaxiao;
		}
		public String getFujianlujing() {
			return fujianlujing;
		}
		public void setFujianlujing(String fujianlujing) {
			this.fujianlujing = fujianlujing;
		}
		public String getFujianqitalujing() {
			return fujianqitalujing;
		}
		public void setFujianqitalujing(String fujianqitalujing) {
			this.fujianqitalujing = fujianqitalujing;
		}
		public String getShangchuanshijian() {
			return shangchuanshijian;
		}
		public void setShangchuanshijian(String shangchuanshijian) {
			this.shangchuanshijian = shangchuanshijian;
		}
		public Integer getXiazhaicishu() {
			return xiazhaicishu;
		}
		public void setXiazhaicishu(Integer xiazhaicishu) {
			this.xiazhaicishu = xiazhaicishu;
		}
		public String getFujianstate() {
			return fujianstate;
		}
		public void setFujianstate(String fujianstate) {
			this.fujianstate = fujianstate;
		}
}
