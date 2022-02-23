package project4.vo;

import java.util.Date;
// project4.a04_vo.EatTogether
public class EatTogether {
	private int eattokey;
	private int boardkey;
	private int userkey;
	private String title;
	private Date writedate;
	private String writedateS;
	private String content;
	private String loc;
	private int meetcnt;
	private String meetage;
	private String meetgender;
	private String paytype;
	public EatTogether() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EatTogether(int eattokey, int boardkey, int userkey, String title, Date writedate, String writedateS,
			String content, String loc, int meetcnt, String meetage, String meetgender, String paytype) {
		super();
		this.eattokey = eattokey;
		this.boardkey = boardkey;
		this.userkey = userkey;
		this.title = title;
		this.writedate = writedate;
		this.writedateS = writedateS;
		this.content = content;
		this.loc = loc;
		this.meetcnt = meetcnt;
		this.meetage = meetage;
		this.meetgender = meetgender;
		this.paytype = paytype;
	}
	public int getEattokey() {
		return eattokey;
	}
	public void setEattokey(int eattokey) {
		this.eattokey = eattokey;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getWritedate() {
		return writedate;
	}
	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}
	public String getWritedateS() {
		return writedateS;
	}
	public void setWritedateS(String writedateS) {
		this.writedateS = writedateS;
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
	public String getMeetage() {
		return meetage;
	}
	public void setMeetage(String meetage) {
		this.meetage = meetage;
	}
	public String getMeetgender() {
		return meetgender;
	}
	public void setMeetgender(String meetgender) {
		this.meetgender = meetgender;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
}
