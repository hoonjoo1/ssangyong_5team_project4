package com.yj.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yj.domain.UrReplyVO;
import com.yj.domain.BrReplyVO;
import com.yj.domain.Criteria;
import com.yj.mapper.UrReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class UrReplyServiceImpl implements UrReplyService {

	private UrReplyMapper mapper;

	@Override
	public int register(UrReplyVO vo) {

		log.info("register......" + vo);

		return mapper.insert(vo);

	}

	@Override
	public UrReplyVO get(int rno) {

		log.info("get......" + rno);

		return mapper.read(rno);

	}

	@Override
	public int modify(UrReplyVO vo) {

		log.info("modify......" + vo);

		return mapper.update(vo);

	}

	@Override
	public int remove(int rno) {

		log.info("remove...." + rno);

		return mapper.delete(rno);

	}

	@Override
	public List<UrReplyVO> getList(int urkey) {

		log.info("get Reply List of a Board " + urkey);

		return mapper.getListWithPaging(urkey);

	}

}
