package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import project4.domain.Criteria;
import project4.domain.UrVO;
import project4.mapper.UrMapper;

@Service
public class UrServiceImpl implements UrService{

	@Setter(onMethod_ = @Autowired)
	UrMapper mapper;

	public List<UrVO> List() {
		return mapper.getList();
	}

	public List<UrVO> getList(Criteria cri){
		return mapper.getListWithPaging(cri);
	}
	
	
	public UrVO get(int urkey) {
		return mapper.get(urkey);
	}

	public void register(UrVO ur) {
		mapper.register(ur);
	}

	public void update(UrVO ur) {
		mapper.update(ur);
	}

	public void delete(int urkey) {
		mapper.delete(urkey);
	}
}
