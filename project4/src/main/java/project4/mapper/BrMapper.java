package project4.mapper;

import java.util.List;

import project4.domain.BrVO;

public interface BrMapper {
	
	public List<BrVO> list();
	public BrVO get(int bno);
	public void insert(BrVO vo);
	public void update(BrVO vo);
	public void delete(int bno);
	
}
