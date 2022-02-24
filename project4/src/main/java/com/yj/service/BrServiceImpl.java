package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.BrVO;
import com.yj.mapper.BrMapper;

import lombok.Setter;

@Service
public class BrServiceImpl implements BrService {

	@Setter(onMethod_ = @Autowired)
	BrMapper mapper;

	public List<BrVO> list() {
		return mapper.list();
	}

	public BrVO get(int bno) {
		return mapper.get(bno);
	}

	public void insert(BrVO vo) {
		mapper.insert(vo);
	}

	public void update(BrVO vo) {
		mapper.update(vo);
	}

	public void delete(int bno) {
		mapper.delete(bno);
	}

}
