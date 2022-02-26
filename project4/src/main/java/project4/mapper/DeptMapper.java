package project4.mapper;

import java.util.List;

import project4.domain.DeptVO;

public interface DeptMapper {
	public List<DeptVO> getList();
	public DeptVO getDetail(int deptno);
	public void insDept(DeptVO ins);
	public void uptDept(DeptVO upt);
	public void delDept(int deptno);
	
}
