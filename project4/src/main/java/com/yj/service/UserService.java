package com.yj.service;

import java.util.List;

import com.yj.domain.UserVO;

public interface UserService {
	public List<UserVO> list();
	public UserVO get(int userkey);
	public void insert(UserVO vo);
	public void update(UserVO vo);
	public void delete(int userkey);
}
