package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.CartVO;

@Service
public interface CartService {
	public List<CartVO> list();

	public CartVO get(int cartkey);

	public void insert(CartVO vo);

	public void update(CartVO vo);

	public void delete(int cartkey);

}
