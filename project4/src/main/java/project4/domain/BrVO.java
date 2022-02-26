package project4.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BrVO {
	int bkey;
	int userkey;
	int boardkey;
	int bristokey;
	Date visitdate;
	Date writedate;
	String title;
	String content;
	int grade;
	String img;

	public BrVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BrVO(int bkey, int userkey, int boardkey, int bristokey, String title, String content, int grade,
			String img) {
		super();
		this.bkey = bkey;
		this.userkey = userkey;
		this.boardkey = boardkey;
		this.bristokey = bristokey;
		this.title = title;
		this.content = content;
		this.grade = grade;
		this.img = img;
	}

}
