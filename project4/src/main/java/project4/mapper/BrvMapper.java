package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.BrvVO;
@Repository
public interface BrvMapper {
	public List<BrvVO> list();
	public void insert(BrvVO vo);
	public void update(BrvVO vo);
	public void delete(int brvkey);
	public BrvVO get(int brvkey);
}
