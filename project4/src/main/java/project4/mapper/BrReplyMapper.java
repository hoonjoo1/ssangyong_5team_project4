package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.BrReplyVO;
@Repository
public interface BrReplyMapper {
	public int insert(BrReplyVO vo);

	public BrReplyVO read(int bkey);

	public int delete(int bkey);

	public int update(BrReplyVO reply);
	
	public List<BrReplyVO> getListWithPaging(int bkey);

	public int getCountBybkey(int bkey);
	
}
