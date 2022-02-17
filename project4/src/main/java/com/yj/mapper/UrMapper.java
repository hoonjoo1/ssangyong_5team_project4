package com.yj.mapper;

import java.util.List;

import com.yj.domain.Criteria;
import com.yj.domain.UrVO;

public interface UrMapper {
	public List<UrVO> getList();

	public UrVO get(int urkey);

	public void register(UrVO ur);

	public void update(UrVO ur);

	public void delete(int urkey);

	public List<UrVO> getListWithPaging(Criteria cri);
}
