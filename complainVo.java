package Vo;

public class complainVo {

	private int complainId;
	private String complainTitle;
	private String complainDescription;
	private String complainDate;
	private String complainTime;
	private String complainReply;
	private LoginVo loginVoTo;
	private LoginVo loginVoFrom;
	
	public LoginVo getLoginVoTo() {
		return loginVoTo;
	}
	public void setLoginVoTo(LoginVo loginVoTo) {
		this.loginVoTo = loginVoTo;
	}
	public LoginVo getLoginVoFrom() {
		return loginVoFrom;
	}
	public void setLoginVoFrom(LoginVo loginVoFrom) {
		this.loginVoFrom = loginVoFrom;
	}
	public int getComplainId() {
		return complainId;
	}
	public void setComplainId(int complainId) {
		this.complainId = complainId;
	}
	public String getComplainTitle() {
		return complainTitle;
	}
	public void setComplainTitle(String complainTitle) {
		this.complainTitle = complainTitle;
	}
	public String getComplainDescription() {
		return complainDescription;
	}
	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}
	
	public String getComplainDate() {
		return complainDate;
	}
	public void setComplainDate(String complainDate) {
		this.complainDate = complainDate;
	}
	public String getComplainTime() {
		return complainTime;
	}
	public void setComplainTime(String complainTime) {
		this.complainTime = complainTime;
	}
	public String getComplainReply() {
		return complainReply;
	}
	public void setComplainReply(String complainReply) {
		this.complainReply = complainReply;
	}
	
	
}
