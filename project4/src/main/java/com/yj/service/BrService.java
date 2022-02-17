package com.yj.service;

import java.util.List;

import com.yj.domain.BrVO;

public interface BrService {
	public List<BrVO> list();
	public BrVO get(int bno);
	public void insert(BrVO vo);
	public void update(BrVO vo);
	public void delete(int bno);
}
