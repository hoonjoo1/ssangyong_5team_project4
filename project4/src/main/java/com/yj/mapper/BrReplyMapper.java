package com.yj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yj.domain.Criteria;
import com.yj.domain.BrReplyVO;

public interface BrReplyMapper {
	public int insert(BrReplyVO vo);

	public BrReplyVO read(int bkey);

	public int delete(int bkey);

	public int update(BrReplyVO reply);
	
	public List<BrReplyVO> getListWithPaging(int bkey);

	public int getCountBybkey(int bkey);
	
}
