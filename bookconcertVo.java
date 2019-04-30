package Vo;

public class bookconcertVo {

	private int bookingId;
	private String name;
	private String phone;
	private String email;
	private String address;
	private LoginVo loginvo;
	
	public LoginVo getLoginvo() {
		return loginvo;
	}
	public void setLoginvo(LoginVo loginvo) {
		this.loginvo = loginvo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}	
}
