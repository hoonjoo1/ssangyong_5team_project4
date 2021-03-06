package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.UserVO;
@Repository
public interface UserMapper {
	public List<UserVO> list();
	public UserVO get(int userkey);
	public void insert(UserVO vo);
	public void update(UserVO vo);
	public void delete(int userkey);
	public String logincheck(UserVO vo);
	public int idCheck(String id);
	public UserVO login(UserVO login);
}
