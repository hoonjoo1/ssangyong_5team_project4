package project4.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import project4.domain.BrReplyVO;
import project4.mapper.BrReplyMapper;

@Service
@Log4j
@AllArgsConstructor
public class BrReplyServiceImpl implements BrReplyService {

	private BrReplyMapper mapper;

	@Override
	public int register(BrReplyVO vo) {

		log.info("register......" + vo);

		return mapper.insert(vo);

	}

	@Override
	public BrReplyVO get(int rno) {

		log.info("get......" + rno);

		return mapper.read(rno);

	}

	@Override
	public int modify(BrReplyVO vo) {

		log.info("modify......" + vo);

		return mapper.update(vo);

	}

	@Override
	public int remove(int rno) {

		log.info("remove...." + rno);

		return mapper.delete(rno);

	}

	@Override
	public List<BrReplyVO> getList(int bkey) {

		log.info("get Reply List of a Board " + bkey);

		return mapper.getListWithPaging(bkey);

	}

}
