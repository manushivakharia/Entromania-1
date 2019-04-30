package Vo;

import java.io.Serializable;

public class ticketVo implements Serializable{

	private int ticketId;
	private String ticketname;
	private int ticketprice;
	private String ticketdesc;
	private int noOftickets;
	private int soldTickets;
	private stadiumVo stadiumvo;
	private matchVo matchvo;

	public int getTicketId() {
		return ticketId;
	}
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}
	public int getSoldTickets() {
		return soldTickets;
	}
	public void setSoldTickets(int soldTickets) {
		this.soldTickets = soldTickets;
	}
	public String getTicketname() {
		return ticketname;
	}
	public void setTicketname(String ticketname) {
		this.ticketname = ticketname;
	}
	public int getTicketprice() {
		return ticketprice;
	}
	public void setTicketprice(int ticketprice) {
		this.ticketprice = ticketprice;
	}
	public String getTicketdesc() {
		return ticketdesc;
	}
	public void setTicketdesc(String ticketdesc) {
		this.ticketdesc = ticketdesc;
	}
	public int getNoOftickets() {
		return noOftickets;
	}
	public void setNoOftickets(int noOftickets) {
		this.noOftickets = noOftickets;
	}
	public stadiumVo getStadiumvo() {
		return stadiumvo;
	}
	public void setStadiumvo(stadiumVo stadiumvo) {
		this.stadiumvo = stadiumvo;
	}
	public matchVo getMatchvo() {
		return matchvo;
	}
	public void setMatchvo(matchVo matchvo) {
		this.matchvo = matchvo;
	}
	
}