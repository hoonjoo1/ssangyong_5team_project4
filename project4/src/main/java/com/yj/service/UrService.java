package com.yj.service;

import java.util.List;

import com.yj.domain.Criteria;
import com.yj.domain.UrVO;

public interface UrService {
	public List<UrVO> List();
	public UrVO get(int urkey);
	public void register(UrVO ur);
	public void update(UrVO ur);
	public void delete(int urkey);
	public List<UrVO> getList(Criteria cri);
}
