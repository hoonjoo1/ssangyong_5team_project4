package project4.vo;

public class Fppcomm {
	private int fcommkey;
	private String commcontent;
	private String commdate;
	private String nickname;
	public Fppcomm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Fppcomm(int fcommkey, String commcontent, String commdate, String nickname) {
		super();
		this.fcommkey = fcommkey;
		this.commcontent = commcontent;
		this.commdate = commdate;
		this.nickname = nickname;
	}
	public int getFcommkey() {
		return fcommkey;
	}
	public void setFcommkey(int fcommkey) {
		this.fcommkey = fcommkey;
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
