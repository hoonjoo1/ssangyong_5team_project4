package com.yj.mapper;

import java.util.List;

import com.yj.domain.BristoVO;
import com.yj.domain.FileInfo;



public interface BristoMapper {
	public List<BristoVO> list();
	public BristoVO get(int bristokey);
	public void insert(BristoVO vo);
	public void update(BristoVO vo);
	public void delete(int bristokey);
	public void insertFileInfo(FileInfo ins);
	
}
