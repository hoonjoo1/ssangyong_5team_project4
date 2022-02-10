package com.yj.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yj.domain.BrVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BrMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BrMapper mapper;

	@Test
	public void testList() {
		mapper.list();
	}

	@Test
	public void testGet() {
		mapper.get(1);
	}

	@Test
	public void testUpdate() {
		BrVO vo = new BrVO();
		vo.setBkey(1);
		vo.setTitle("gogo");
		mapper.update(vo);
	}

	@Test
	public void testInsert() {
		BrVO vo = new BrVO();
		vo.setTitle("1");
		vo.setUserkey(1);
		mapper.insert(vo);
	}

	@Test
	public void testDelete() {
		mapper.delete(1);
	}

}
