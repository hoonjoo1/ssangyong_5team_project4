package com.yj.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yj.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	@Setter(onMethod_ = { @Autowired })
	private BoardService service;

	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}

	@Test
	public void testRegister() {

		BoardVO board = new BoardVO();
		board.setBoardkey(33);
		board.setBoardname("새로 작성하는 내용");

		service.register(board);

		log.info("생성된 게시물의 번호: " + board.getBoardkey());
	}

	@Test
	public void testGet() {

		log.info(service.get(1));
	}

	@Test
	public void testDelete() {

		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
		log.info("REMOVE RESULT: " + service.remove(2));

	}

	@Test
	public void testUpdate() {

		BoardVO board = service.get(1);

		if (board == null) {
			return;
		}

		board.setBoardname(" 수정합니다.");
		log.info("MODIFY RESULT: " + service.modify(board));
	}

}