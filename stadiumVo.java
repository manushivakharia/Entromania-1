package Vo;

import java.io.Serializable;

public class stadiumVo implements Serializable{

	private int s_id;
	private String stadium;
	private int capacity;
	private int p_capacity;
	private cityVo cityvo;
	private stateVo statevo;
	
	
	public cityVo getCityvo() {
		return cityvo;
	}
	public void setCityvo(cityVo cityvo) {
		this.cityvo = cityvo;
	}
	public stateVo getStatevo() {
		return statevo;
	}
	public void setStatevo(stateVo statevo) {
		this.statevo = statevo;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public int getP_capacity() {
		return p_capacity;
	}
	public void setP_capacity(int p_capacity) {
		this.p_capacity = p_capacity;
	}
	
}
