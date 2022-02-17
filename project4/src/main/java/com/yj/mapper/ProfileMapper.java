package com.yj.mapper;

import java.util.List;


import com.yj.domain.ProfileVO;

public interface ProfileMapper {
	public List<ProfileVO> list();
	public void insert(ProfileVO vo);
	public void update(ProfileVO vo);
	public void delete(int profilekey);
	public ProfileVO get(int profilekey);
}
