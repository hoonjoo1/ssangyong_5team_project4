package com.yj.mapper;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yj.domain.CommentsVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CommentsMapperTests {
	@Setter(onMethod_ = @Autowired)
	private CommentsMapper mapper;

	
	
	
	@Test
	public void testMapper() {
		log.info(mapper);
	}

	

	@Test
	public void testCreate() {


			CommentsVO vo = new CommentsVO();

			// 게시물의 번호
			vo.setUserkey(1);
			vo.setCommcontents("하이");

			mapper.insert(vo);

	}

	@Test
	public void testRead() {

		int commentkey = 1;

		CommentsVO vo = mapper.read(commentkey);

		log.info(vo);

	}
/*
	@Test
	public void testUpdate() {

		int commentkey = 1;

		CommentsVO vo = mapper.read(commentkey);

		vo.setCommcontents("Update Reply ");

		int count = mapper.update(vo);

		log.info("UPDATE COUNT: " + count);
	}
	
	*/
	@Test
	public void testDelete() {

		int commentkey = 1;

		mapper.delete(commentkey);
	}

	
}
