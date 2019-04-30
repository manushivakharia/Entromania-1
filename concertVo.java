package Vo;

import java.io.Serializable;

public class concertVo implements Serializable{
	private int cn_id;
	private String title;
	private String singer;
	private String date;
	private String time;
	private String c_des;
	private stadiumVo stadiumvo;
	
	public stadiumVo getStadiumvo() {
		return stadiumvo;
	}
	public void setStadiumvo(stadiumVo stadiumvo) {
		this.stadiumvo = stadiumvo;
	}
	
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getCn_id() {
		return cn_id;
	}
	public void setCn_id(int cn_id) {
		this.cn_id = cn_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getC_des() {
		return c_des;
	}
	public void setC_des(String c_des) {
		this.c_des = c_des;
	}
	
}
