package Vo;

public class conticketVo {

	private int c_ticketId;
	private String ticketname;
	private int ticketprice;
	private int noOfTickets;
	private int soldoutTickets;
	private String ticketdesc;
	private stadiumVo stadiumvo;
	private concertVo concertvo;
	
	
	
	public int getSoldoutTickets() {
		return soldoutTickets;
	}
	public void setSoldoutTickets(int soldoutTickets) {
		this.soldoutTickets = soldoutTickets;
	}
	public int getNoOfTickets() {
		return noOfTickets;
	}
	public void setNoOfTickets(int noOfTickets) {
		this.noOfTickets = noOfTickets;
	}
	public int getC_ticketId() {
		return c_ticketId;
	}
	public void setC_ticketId(int c_ticketId) {
		this.c_ticketId = c_ticketId;
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
	public stadiumVo getStadiumvo() {
		return stadiumvo;
	}
	public void setStadiumvo(stadiumVo stadiumvo) {
		this.stadiumvo = stadiumvo;
	}
	public concertVo getConcertvo() {
		return concertvo;
	}
	public void setConcertvo(concertVo concertvo) {
		this.concertvo = concertvo;
	}
	
	
}
