package com.yj.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BrvVO {
	private int brvkey;
	private int bristokey;
	private int userkey;
	private Date reservtime;
	private String reservtimeS;
	private int meetnum;
	private Date accepttime;
	private String accepttimeS;
}
