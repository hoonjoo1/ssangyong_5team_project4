package com.yj.mapper;



import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yj.domain.UrVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UrMapperTests {

	@Setter(onMethod_ = @Autowired)
	private UrMapper mapper;

	@Test
	public void testGetList() {
		mapper.getList().forEach(Ur -> log.info(Ur));
	}
	
	@Test
	public void testGet() {
		mapper.get(1);
	}
	
	@Test
	public void testUpdate() {
		UrVO vo = new UrVO();
		vo.setUrkey(4);
		vo.setTitle("gogo");
		mapper.update(vo);
	}

	@Test
	public void testInsert() {
		UrVO vo = new UrVO(5,1,11,"1","2022/1/1","1","1",1);
		//UrVO vo =new UrVO();
		mapper.register(vo);
	}
	
	@Test
	public void testDelete() {
		mapper.delete(5);
	}
	
	

}
