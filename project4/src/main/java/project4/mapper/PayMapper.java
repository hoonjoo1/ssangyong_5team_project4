package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.PayVO;

@Repository
public interface PayMapper {
	public List<PayVO> list();

	public PayVO get(int paykey);

	public void insert(PayVO vo);

	public void update(PayVO vo);

	public void delete(int paykey);
}
