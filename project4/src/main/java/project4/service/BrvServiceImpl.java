package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import project4.domain.BrvVO;
import project4.mapper.BrvMapper;

@Service
@Log4j
public class BrvServiceImpl implements BrvService {

	@Setter(onMethod_ = { @Autowired })
	BrvMapper mapper;

	@Override
	public List<BrvVO> list() {
		return mapper.list();
	}

	@Override
	public void insert(BrvVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void update(BrvVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(int brvkey) {
		mapper.delete(brvkey);
	}

	@Override
	public BrvVO get(int brvkey) {
		return mapper.get(brvkey);
	}

}
