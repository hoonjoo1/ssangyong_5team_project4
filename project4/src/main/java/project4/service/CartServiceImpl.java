package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project4.domain.CartVO;
import project4.mapper.CartMapper;

@Service
public class CartServiceImpl {

	@Autowired
	CartMapper mapper;

	public List<CartVO> list() {
		return mapper.list();
	}

	public CartVO get(int cartkey) {
		return mapper.get(cartkey);
	}

	public void insert(CartVO vo) {
		mapper.insert(vo);
	}

	public void update(CartVO vo) {
		mapper.update(vo);
	}

	public void delete(int cartkey) {
		mapper.delete(cartkey);
	}

}
