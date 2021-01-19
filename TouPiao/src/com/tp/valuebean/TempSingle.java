package com.tp.valuebean;

//JavaBean封装从tb_temp数据表中获取的信息
public class TempSingle {
	private String id;
	private String votelp;
	private long voteMSEL;
	private String voteTime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getVotelp() {
		return votelp;
	}
	public void setVotelp(String votelp) {
		this.votelp = votelp;
	}
	public long getVoteMSEL() {
		return voteMSEL;
	}
	public void setVoteMSEL(long voteMSEL) {
		this.voteMSEL = voteMSEL;
	}
	public String getVoteTime() {
		return voteTime;
	}
	public void setVoteTime(String voteTime) {
		this.voteTime = voteTime;
	}
	
}
