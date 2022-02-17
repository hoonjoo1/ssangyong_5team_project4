package com.yj.service;

import java.util.List;

import com.yj.domain.UrReplyVO;

public interface UrReplyService {
	public int register(UrReplyVO vo);

	public UrReplyVO get(int rno);

	public int modify(UrReplyVO vo);

	public int remove(int rno);

	public List<UrReplyVO> getList(int urkey);
}
