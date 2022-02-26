package project4.service;

import java.util.List;

import project4.domain.BristoVO;

public interface BristoService {
	public List<BristoVO> list();
	public BristoVO get(int bristokey);
	public void insert(BristoVO vo);
	public void update(BristoVO vo);
	public void delete(int bristokey);
}
