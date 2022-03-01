package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.CartVO;

@Repository
public interface CartMapper {
	public List<CartVO> list();

	public CartVO get(int cartkey);

	public void insert(CartVO vo);

	public void update(CartVO vo);

	public void delete(int cartkey);

}
