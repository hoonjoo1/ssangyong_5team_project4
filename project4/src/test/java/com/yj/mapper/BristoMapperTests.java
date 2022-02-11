package com.yj.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yj.domain.BristoVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BristoMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BristoMapper mapper;

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
		BristoVO vo = new BristoVO();
		vo.setBristokey(1);
		vo.setName("gogo");
		mapper.update(vo);
	}

	@Test
	public void testInsert() {

		BristoVO vo = new BristoVO();
		vo.setBristokey(9);
		vo.setName("초밥");
		mapper.insert(vo);
	}

	@Test
	public void testDelete() {
		mapper.delete(1);
	}

}
