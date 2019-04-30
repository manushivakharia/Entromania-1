package Vo;

public class ticketAllocationVo {

	private int ticketallocationId;
	private String ticketno;
	private int counter;
	private ticketVo ticketVo;
	private matchVo matchVo;
	private stadiumVo stadiumVo;
	private LoginVo LoginVo;
	public int getTicketallocationId() {
		return ticketallocationId;
	}
	public void setTicketallocationId(int ticketallocationId) {
		this.ticketallocationId = ticketallocationId;
	}
	public String getTicketno() {
		return ticketno;
	}
	public void setTicketno(String ticketno) {
		this.ticketno = ticketno;
	}
	public int getCounter() {
		return counter;
	}
	public void setCounter(int counter) {
		this.counter = counter;
	}
	public ticketVo getTicketVo() {
		return ticketVo;
	}
	public void setTicketVo(ticketVo ticketVo) {
		this.ticketVo = ticketVo;
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
		return LoginVo;
	}
	public void setLoginVo(LoginVo loginVo) {
		LoginVo = loginVo;
	}
	
	
}
