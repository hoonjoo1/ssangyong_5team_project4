package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.BrReplyVO;

public interface BrReplyService {
	public int register(BrReplyVO vo);

	public BrReplyVO get(int rno);

	public int modify(BrReplyVO vo);

	public int remove(int rno);

	public List<BrReplyVO> getList(int bkey);

}
