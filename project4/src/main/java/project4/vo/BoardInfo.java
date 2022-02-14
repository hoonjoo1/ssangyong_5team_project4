package project4.vo;

public class BoardInfo {
	private String nickname;
	private String title;
	private String writedate;
	private String content;
	private String loc;
	private int meetcnt;
	private String paytype;
	private int viewcnt;
	private String boardname;
	public BoardInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardInfo(String nickname, String title, String writedate, String content, String loc, int meetcnt,
			String paytype, int viewcnt, String boardname) {
		super();
		this.nickname = nickname;
		this.title = title;
		this.writedate = writedate;
		this.content = content;
		this.loc = loc;
		this.meetcnt = meetcnt;
		this.paytype = paytype;
		this.viewcnt = viewcnt;
		this.boardname = boardname;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getMeetcnt() {
		return meetcnt;
	}
	public void setMeetcnt(int meetcnt) {
		this.meetcnt = meetcnt;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getBoardname() {
		return boardname;
	}
	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}
	
	
	
	
}
