package project4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import project4.domain.ProfileVO;
import project4.mapper.ProfileMapper;

@Service
public class ProfileServiceImpl implements ProfileService{
	
	@Setter(onMethod_ = {@Autowired})
	ProfileMapper mapper;
	
	public List<ProfileVO> list(){
		return mapper.list();
	}

	public void insert(ProfileVO vo) {
		mapper.insert(vo);
	}

	public void update(ProfileVO vo) {
		mapper.update(vo);
	}
	
	public void delete(int profilekey) {
		mapper.delete(profilekey);
	}
	
	public ProfileVO get(int profilekey) {
		return mapper.get(profilekey);
	}

}