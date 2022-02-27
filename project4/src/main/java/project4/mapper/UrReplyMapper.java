package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.UrReplyVO;
@Repository
public interface UrReplyMapper {
	public int insert(UrReplyVO vo);

	public UrReplyVO read(int urkey);

	public int delete(int urkey);

	public int update(UrReplyVO reply);

	public List<UrReplyVO> getListWithPaging(int urkey);

	public int getCountBybkey(int urkey);
}
