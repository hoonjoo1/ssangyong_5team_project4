package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import project4.domain.BrVO;
import project4.mapper.BrMapper;

@Service
public class BrServiceImpl implements BrService {

	@Autowired
	BrMapper mapper;

	public List<BrVO> list() {
		return mapper.list();
	}

	public BrVO get(int bno) {
		return mapper.get(bno);
	}

	public void insert(BrVO vo) {
		mapper.insert(vo);
	}

	public void update(BrVO vo) {
		mapper.update(vo);
	}

	public void delete(int bno) {
		mapper.delete(bno);
	}

}
