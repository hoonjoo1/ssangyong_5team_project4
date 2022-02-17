package com.yj.mapper;

import java.util.List;

import com.yj.domain.UrReplyVO;

public interface UrReplyMapper {
	public int insert(UrReplyVO vo);

	public UrReplyVO read(int urkey);

	public int delete(int urkey);

	public int update(UrReplyVO reply);

	public List<UrReplyVO> getListWithPaging(int urkey);

	public int getCountBybkey(int urkey);
}
