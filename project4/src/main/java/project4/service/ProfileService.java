package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import project4.domain.ProfileVO;
@Service
public interface ProfileService {
	public List<ProfileVO> list();
	public void insert(ProfileVO vo);
	public void update(ProfileVO vo);
	public void delete(int profilekey);
	public ProfileVO get(int profilekey);
}
