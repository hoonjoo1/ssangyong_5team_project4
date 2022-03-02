package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.PayVO;

@Service
public interface PayService {
	public List<PayVO> list();

	public PayVO get(int paykey);

	public void insert(PayVO vo);

	public void update(PayVO vo);

	public void delete(int paykey);
}
