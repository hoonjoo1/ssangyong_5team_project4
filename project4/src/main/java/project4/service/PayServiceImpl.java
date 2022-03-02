package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project4.domain.PayVO;
import project4.mapper.PayMapper;

@Service
public class PayServiceImpl {
	@Autowired
	PayMapper mapper;

	public List<PayVO> list() {
		return mapper.list();
	}

	public PayVO get(int paykey) {
		return mapper.get(paykey);
	}

	public void insert(PayVO vo) {
		mapper.insert(vo);
	}

	public void update(PayVO vo) {
		mapper.update(vo);
	}

	public void delete(int paykey) {
		mapper.delete(paykey);
	}

}
