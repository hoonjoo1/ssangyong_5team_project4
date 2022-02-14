package project4.vo;

public class Fppcomm {
	private int commkey;
	private String commcontent;
	private String commdate;
	private String nickname;
	public Fppcomm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Fppcomm(int commkey, String commcontent, String commdate, String nickname) {
		super();
		this.commkey = commkey;
		this.commcontent = commcontent;
		this.commdate = commdate;
		this.nickname = nickname;
	}
	public int getCommkey() {
		return commkey;
	}
	public void setCommkey(int commkey) {
		this.commkey = commkey;
	}
	public String getCommcontent() {
		return commcontent;
	}
	public void setCommcontent(String commcontent) {
		this.commcontent = commcontent;
	}
	public String getCommdate() {
		return commdate;
	}
	public void setCommdate(String commdate) {
		this.commdate = commdate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	
	
	
	
	
}
