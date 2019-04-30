package Vo;

import java.io.Serializable;

public class bookticketdetailVo implements Serializable{

	private int ticketdetailid;
	private int ticketprice;
	private int noofticket;
	private int total;
	private int counter;
	private String ticketname;
	private bookticketVo bookticketVo;	
	private matchVo matchVo;
	private stadiumVo stadiumVo;
	private LoginVo loginVo;
	 
	
	public int getCounter() {
		return counter;
	}
	public void setCounter(int counter) {
		this.counter = counter;
	}
	public matchVo getMatchVo() {
		return matchVo;
	}
	public void setMatchVo(matchVo matchVo) {
		this.matchVo = matchVo;
	}
	public stadiumVo getStadiumVo() {
		return stadiumVo;
	}
	public void setStadiumVo(stadiumVo stadiumVo) {
		this.stadiumVo = stadiumVo;
	}
	public LoginVo getLoginVo() {
		return loginVo;
	}
	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}
	public String getTicketname() {
		return ticketname;
	}
	public void setTicketname(String ticketname) {
		this.ticketname = ticketname;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getTicketdetailid() {
		return ticketdetailid;
	}
	public void setTicketdetailid(int ticketdetailid) {
		this.ticketdetailid = ticketdetailid;
	}
	public int getNoofticket() {
		return noofticket;
	}
	public void setNoofticket(int noofticket) {
		this.noofticket = noofticket;
	}
	public bookticketVo getBookticketVo() {
		return bookticketVo;
	}
	public void setBookticketVo(bookticketVo bookticketVo) {
		this.bookticketVo = bookticketVo;
	}
	public int getTicketprice() {
		return ticketprice;
	}
	public void setTicketprice(int ticketprice) {
		this.ticketprice = ticketprice;
	}
	
	
}
