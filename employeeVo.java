package Vo;

public class employeeVo{
	private int e_id;
	private String fname;
	private String lname;
	private String dob;
	private String gender;
	private String emailid;
	private int mobileno;
	private String address;
	private String uname;
	private String etype;
	private stateVo statevo;
	private cityVo cityvo;
	private stadiumVo stadiumvo;
	
	
	
	public stateVo getStatevo() {
		return statevo;
	}
	public void setStatevo(stateVo statevo) {
		this.statevo = statevo;
	}
	public cityVo getCityvo() {
		return cityvo;
	}
	public void setCityvo(cityVo cityvo) {
		this.cityvo = cityvo;
	}
	public stadiumVo getStadiumvo() {
		return stadiumvo;
	}
	public void setStadiumvo(stadiumVo stadiumvo) {
		this.stadiumvo = stadiumvo;
	}
	public int getE_id() {
		return e_id;
	}
	public void setE_id(int e_id) {
		this.e_id = e_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getMobileno() {
		return mobileno;
	}
	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEtype() {
		return etype;
	}
	public void setEtype(String etype) {
		this.etype = etype;
	}
}
