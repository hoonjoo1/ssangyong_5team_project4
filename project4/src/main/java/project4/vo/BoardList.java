package project4.vo;

public class BoardList {
	private int fppkey;
	private String title;
	private String loc;
	private String writedate;
	private String nickname;
	private int viewcnt;
	public BoardList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardList(int fppkey, String title, String loc, String writedate, String nickname, int viewcnt) {
		super();
		this.fppkey = fppkey;
		this.title = title;
		this.loc = loc;
		this.writedate = writedate;
		this.nickname = nickname;
		this.viewcnt = viewcnt;
	}
	public int getFppkey() {
		return fppkey;
	}
	public void setFppkey(int fppkey) {
		this.fppkey = fppkey;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	
	
	
}
