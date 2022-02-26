package project4.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import project4.domain.UserVO;

public interface UserService {
	public List<UserVO> list();
	public UserVO get(int userkey);
	public void insert(UserVO vo);
	public void update(UserVO vo);
	public void delete(int userkey);
	public String logincheck(UserVO vo, HttpSession session);
	public int idCheck(String id);
	public UserVO login(UserVO login);
}
