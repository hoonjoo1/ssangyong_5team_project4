package com.yj.service;

import java.util.List;

import com.yj.domain.BrvVO;

public interface BrvService {
	public List<BrvVO> list();

	public void insert(BrvVO vo);

	public void update(BrvVO vo);

	public void delete(int brvkey);

	public BrvVO get(int brvkey);
}
