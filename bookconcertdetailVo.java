package Vo;

public class bookconcertdetailVo {

	private int concertdetailid;
	private int ticketprice;
	private int noofticket;
	private int counter;
	private int total;
	private String ticketname;
	private bookconcertVo bookconcertVo;
	private matchVo matchVo;
	private stadiumVo stadoimVo;
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
	public stadiumVo getStadoimVo() {
		return stadoimVo;
	}
	public void setStadoimVo(stadiumVo stadoimVo) {
		this.stadoimVo = stadoimVo;
	}
	public LoginVo getLoginVo() {
		return loginVo;
	}
	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}
	public int getConcertdetailid() {
		return concertdetailid;
	}
	public void setConcertdetailid(int concertdetailid) {
		this.concertdetailid = concertdetailid;
	}
	public int getNoofticket() {
		return noofticket;
	}
	public int getTicketprice() {
		return ticketprice;
	}
	public void setTicketprice(int ticketprice) {
		this.ticketprice = ticketprice;
	}
	public void setNoofticket(int noofticket) {
		this.noofticket = noofticket;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public bookconcertVo getBookconcertVo() {
		return bookconcertVo;
	}
	public String getTicketname() {
		return ticketname;
	}
	public void setTicketname(String ticketname) {
		this.ticketname = ticketname;
	}
	public void setBookconcertVo(bookconcertVo bookconcertVo) {
		this.bookconcertVo = bookconcertVo;
	}
}
