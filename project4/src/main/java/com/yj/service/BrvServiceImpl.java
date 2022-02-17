package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.BrvVO;
import com.yj.mapper.BrvMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class BrvServiceImpl implements BrvService {

	@Setter(onMethod_ = { @Autowired })
	BrvMapper mapper;

	@Override
	public List<BrvVO> list() {
		return mapper.list();
	}

	@Override
	public void insert(BrvVO vo) {
		mapper.insert(vo);
	}

	@Override
	public void update(BrvVO vo) {
		mapper.update(vo);
	}

	@Override
	public void delete(int brvkey) {
		mapper.delete(brvkey);
	}

	@Override
	public BrvVO get(int brvkey) {
		return mapper.get(brvkey);
	}

}
