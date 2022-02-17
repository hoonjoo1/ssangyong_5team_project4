package com.yj.service;

import java.util.List;

import com.yj.domain.BristoVO;

public interface BristoService {
	public List<BristoVO> list();
	public BristoVO get(int bristokey);
	public void insert(BristoVO vo);
	public void update(BristoVO vo);
	public void delete(int bristokey);
}
