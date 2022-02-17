package com.yj.domain;

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
	private Date date;
	private String loc;
	private double grade;

	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserVO(int userkey, String name, String nickname, String id, String password, String phonenum, Date date,
			String loc, double grade) {
		super();
		this.userkey = userkey;
		this.name = name;
		this.nickname = nickname;
		this.id = id;
		this.password = password;
		this.phonenum = phonenum;
		this.date = date;
		this.loc = loc;
		this.grade = grade;
	}

	public int getUserkey() {
		return userkey;
	}

	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenum() {
		return phonenum;
	}

	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public double getGrade() {
		return grade;
	}

	public void setGrade(double grade) {
		this.grade = grade;
	}

}
