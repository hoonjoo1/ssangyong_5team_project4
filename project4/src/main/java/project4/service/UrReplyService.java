package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.UrReplyVO;
@Service
public interface UrReplyService {
	public int register(UrReplyVO vo);

	public UrReplyVO get(int rno);

	public int modify(UrReplyVO vo);

	public int remove(int rno);

	public List<UrReplyVO> getList(int urkey);
}
