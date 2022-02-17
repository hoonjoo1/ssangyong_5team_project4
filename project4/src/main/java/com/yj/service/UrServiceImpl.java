package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.Criteria;
import com.yj.domain.UrVO;
import com.yj.mapper.UrMapper;

import lombok.Setter;

@Service
public class UrServiceImpl implements UrService{

	@Setter(onMethod_ = @Autowired)
	UrMapper mapper;

	public List<UrVO> List() {
		return mapper.getList();
	}

	public List<UrVO> getList(Criteria cri){
		return mapper.getListWithPaging(cri);
	}
	
	
	public UrVO get(int urkey) {
		return mapper.get(urkey);
	}

	public void register(UrVO ur) {
		mapper.register(ur);
	}

	public void update(UrVO ur) {
		mapper.update(ur);
	}

	public void delete(int urkey) {
		mapper.delete(urkey);
	}
}
