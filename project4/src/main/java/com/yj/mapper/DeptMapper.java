package com.yj.mapper;

import java.util.List;

import com.yj.domain.DeptVO;

public interface DeptMapper {
	public List<DeptVO> getList();
	public DeptVO getDetail(int deptno);
	public void insDept(DeptVO ins);
	public void uptDept(DeptVO upt);
	public void delDept(int deptno);
	
}
