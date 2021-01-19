package com.tp.valuebean;

//JavaBean用来邓庄存储在tb_vote数据表中的投票选项信息
public class VoteSingle {
	private String id;		//存储选项ID
	private String title;		//存储选项标题
	private String num;		//存储选项所得票数
	private String order;		//存储选项的排列序号
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
	
	
}
