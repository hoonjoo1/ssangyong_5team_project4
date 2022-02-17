package com.yj.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UrReplyVO {
	  private int rno;
	  private int urkey;

	  private String reply;
	  private String replyer;
	  private Date replyDate;
	  private Date updateDate;
}
