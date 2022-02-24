package com.yj.domain;

import java.sql.*;
import java.util.List;

import lombok.Data;


@Data
public class UrVO {
	private int urkey;
	private int userkey;
	private int boardkey;
	private String title;
	private Date writeDate;
	private String writeDateS;
	private String content;
	private String oppoid;
	private double oppograde;
	private List<UrAttachVO> attachList;
	
	

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
