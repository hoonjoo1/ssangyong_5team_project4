package project4.vo;

public class Foodpubpur {
	private int cnt;
	private int level;
	private int foodpubpurkey;
	private int boardkey;
	private int userkey;
	private int commentskey;
	private String title;
	private String id;
	private String writedate;
	private String content;
	private String loc;
	private int meetcnt;
	private String paytype;
	private int parentsnum;
	private int viewcnt;
	public Foodpubpur() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Foodpubpur(int foodpubpurkey, int boardkey, int userkey, int commentskey, String title, String writedate,
			String content, String loc, int meetcnt, String paytype, int parentsnum, int viewcnt) {
		super();
		this.foodpubpurkey = foodpubpurkey;
		this.boardkey = boardkey;
		this.userkey = userkey;
		this.commentskey = commentskey;
		this.title = title;
		this.writedate = writedate;
		this.content = content;
		this.loc = loc;
		this.meetcnt = meetcnt;
		this.paytype = paytype;
		this.parentsnum = parentsnum;
		this.viewcnt = viewcnt;
	}
	public int getFoodpubpurkey() {
		return foodpubpurkey;
	}
	public void setFoodpubpurkey(int foodpubpurkey) {
		this.foodpubpurkey = foodpubpurkey;
	}
	public int getBoardkey() {
		return boardkey;
	}
	public void setBoardkey(int boardkey) {
		this.boardkey = boardkey;
	}
	public int getUserkey() {
		return userkey;
	}
	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}
	public int getCommentskey() {
		return commentskey;
	}
	public void setCommentskey(int commentskey) {
		this.commentskey = commentskey;
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
	public int getParentsnum() {
		return parentsnum;
	}
	public void setParentsnum(int parentsnum) {
		this.parentsnum = parentsnum;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
	
}
