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

}
