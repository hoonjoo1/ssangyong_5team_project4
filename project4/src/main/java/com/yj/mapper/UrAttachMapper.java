package com.yj.mapper;

import java.util.List;

import com.yj.domain.UrAttachVO;

public interface UrAttachMapper {
	public void insert(UrAttachVO vo);

	public void delete(String uuid);

	public List<UrAttachVO> findByBno(int urkey);

	public void deleteAll(int urkey);

	public List<UrAttachVO> getOldFiles();
}
