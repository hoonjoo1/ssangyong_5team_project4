package project4.service;

import java.util.List;

import project4.domain.Criteria;
import project4.domain.UrVO;

public interface UrService {
	public List<UrVO> List();
	public UrVO get(int urkey);
	public void register(UrVO ur);
	public void update(UrVO ur);
	public void delete(int urkey);
	public List<UrVO> getList(Criteria cri);
}
