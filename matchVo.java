package Vo;

import java.io.Serializable;

public class matchVo implements Serializable{
	
	private int m_id;
	private String team1;
	private String team2;
	private String title;
	private String date;
	private String time;
	private String m_des;
	private stadiumVo stadiumvo;
	
	public stadiumVo getStadiumvo() {
		return stadiumvo;
	}
	public void setStadiumvo(stadiumVo stadiumvo) {
		this.stadiumvo = stadiumvo;
	}
	
	public String getTeam1() {
		return team1;
	}
	public void setTeam1(String team1) {
		this.team1 = team1;
	}
	public String getTeam2() {
		return team2;
	}
	public void setTeam2(String team2) {
		this.team2 = team2;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
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
	public String getM_des() {
		return m_des;
	}
	public void setM_des(String m_des) {
		this.m_des = m_des;
	}
	

}
