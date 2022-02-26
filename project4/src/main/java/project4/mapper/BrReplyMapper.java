package project4.mapper;

import java.util.List;

import project4.domain.BrReplyVO;

public interface BrReplyMapper {
	public int insert(BrReplyVO vo);

	public BrReplyVO read(int bkey);

	public int delete(int bkey);

	public int update(BrReplyVO reply);
	
	public List<BrReplyVO> getListWithPaging(int bkey);

	public int getCountBybkey(int bkey);
	
}
