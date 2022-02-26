package project4.mapper;

import java.util.List;

import project4.domain.Criteria;
import project4.domain.UrVO;

public interface UrMapper {
	public List<UrVO> getList();

	public UrVO get(int urkey);

	public void register(UrVO ur);

	public void update(UrVO ur);

	public void delete(int urkey);

	public List<UrVO> getListWithPaging(Criteria cri);
}
