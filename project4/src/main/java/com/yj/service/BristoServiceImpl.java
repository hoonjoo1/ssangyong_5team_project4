package com.yj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yj.domain.BristoVO;
import com.yj.mapper.BristoMapper;

import lombok.Setter;

@Service
public class BristoServiceImpl implements BristoService {
	@Setter(onMethod_ = @Autowired)
	BristoMapper mapper;

	public List<BristoVO> list() {
		return mapper.list();
	}

	public BristoVO get(int bristokey) {
		return mapper.get(bristokey);
	}

	public void insert(BristoVO vo) {
		mapper.insert(vo);
	}

	public void update(BristoVO vo) {
		mapper.update(vo);
	}

	public void delete(int bristokey) {
		mapper.delete(bristokey);
	}
}
