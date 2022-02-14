package project4.vo;

public class InsFppcomm {
	private int commentkey;
	private int userkey;
	private String commcontents;
	private String commdate;
	private int fppkey;
	public InsFppcomm() {
		super();
		// TODO Auto-generated constructor stub
	}
	public InsFppcomm(int commentkey, int userkey, String commcontents, String commdate, int fppkey) {
		super();
		this.commentkey = commentkey;
		this.userkey = userkey;
		this.commcontents = commcontents;
		this.commdate = commdate;
		this.fppkey = fppkey;
	}
	public int getCommentkey() {
		return commentkey;
	}
	public void setCommentkey(int commentkey) {
		this.commentkey = commentkey;
	}
	public int getUserkey() {
		return userkey;
	}
	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}
	public String getCommcontents() {
		return commcontents;
	}
	public void setCommcontents(String commcontents) {
		this.commcontents = commcontents;
	}
	public String getCommdate() {
		return commdate;
	}
	public void setCommdate(String commdate) {
		this.commdate = commdate;
	}
	public int getFppkey() {
		return fppkey;
	}
	public void setFppkey(int fppkey) {
		this.fppkey = fppkey;
	}
	
	
	
}
