package com.yj.mapper;

import java.util.List;

import com.yj.domain.BrvVO;

public interface BrvMapper {
	public List<BrvVO> list();
	public void insert(BrvVO vo);
	public void update(BrvVO vo);
	public void delete(int brvkey);
	public BrvVO get(int brvkey);
}
