package project4.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	private int userkey;
	private String name;
	private String nickname;
	private String id;
	private String password;
	private String phonenum;
	private Date birthday;
	private String loc;
	private double grade;
	
	public UserVO(double grade) {
		super();
		this.grade = grade;
	}

	public UserVO(int userkey, String name, String nickname, String id, String password, String phonenum, Date birthday,
			String loc, double grade) {
		super();
		this.userkey = userkey;
		this.name = name;
		this.nickname = nickname;
		this.id = id;
		this.password = password;
		this.phonenum = phonenum;
		this.birthday = birthday;
		this.loc = loc;
		this.grade = grade;
	}

	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

}
