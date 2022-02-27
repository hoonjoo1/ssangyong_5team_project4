package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.BrvVO;
@Service
public interface BrvService {
	public List<BrvVO> list();

	public void insert(BrvVO vo);

	public void update(BrvVO vo);

	public void delete(int brvkey);

	public BrvVO get(int brvkey);
}
