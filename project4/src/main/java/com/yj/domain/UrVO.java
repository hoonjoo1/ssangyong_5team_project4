package com.yj.domain;

import java.sql.*;

import lombok.Data;


@Data
public class UrVO {
	int urkey;
	int userkey;
	int boardkey;
	String title;
	Date writeDate;
	String writeDateS;
	String content;
	String oppoid;
	double oppograde;

	public UrVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public UrVO(int urkey, int userkey, int boardkey, String title, String writeDateS, String content, String oppoid,
			double oppograde) {
		super();
		this.urkey = urkey;
		this.userkey = userkey;
		this.boardkey = boardkey;
		this.title = title;
		this.writeDateS = writeDateS;
		this.content = content;
		this.oppoid = oppoid;
		this.oppograde = oppograde;
	}



	
}
