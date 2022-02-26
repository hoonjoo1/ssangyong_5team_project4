package project4.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BrReplyVO {
	  private int rno;
	  private int bkey;

	  private String reply;
	  private String replyer;
	  private Date replyDate;
	  private Date updateDate;
}
