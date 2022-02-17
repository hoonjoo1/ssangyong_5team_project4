package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.UserVO;
import com.yj.mapper.UserMapper;

import lombok.Setter;

@Service
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	UserMapper mapper;

	public List<UserVO> list() {
		return mapper.list();
	}

	public UserVO get(int Userkey) {
		return mapper.get(Userkey);
	}

	public void insert(UserVO vo) {
		mapper.insert(vo);
	}

	public void update(UserVO vo) {
		mapper.update(vo);
	}

	public void delete(int Userkey) {
		mapper.delete(Userkey);
	}

}
