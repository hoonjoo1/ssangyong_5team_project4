package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.DeptVO;
@Repository
public interface DeptMapper {
	public List<DeptVO> getList();
	public DeptVO getDetail(int deptno);
	public void insDept(DeptVO ins);
	public void uptDept(DeptVO upt);
	public void delDept(int deptno);
	
}
