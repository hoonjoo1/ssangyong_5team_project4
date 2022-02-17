package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.DeptVO;
import com.yj.mapper.DeptMapper;

@Service
public class DeptService {
	@Autowired
	DeptMapper dao;
	
	public List<DeptVO> getList() {
		return dao.getList();
	}
	public DeptVO getDetail(int deptno) {
		return dao.getDetail(deptno);
	}
	public void insDept(DeptVO ins) {
		 dao.insDept(ins);
	}
	public void uptDept(DeptVO upt) {
		dao.uptDept(upt);
	}
	public void delDept(int deptno) {
		dao.delDept(deptno);
	}
	
}
