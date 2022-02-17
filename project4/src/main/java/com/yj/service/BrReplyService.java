package com.yj.service;

import java.util.List;

import com.yj.domain.Criteria;
import com.yj.domain.BrReplyVO;

public interface BrReplyService {
	public int register(BrReplyVO vo);

	public BrReplyVO get(int rno);

	public int modify(BrReplyVO vo);

	public int remove(int rno);

	public List<BrReplyVO> getList(int bkey);

}
