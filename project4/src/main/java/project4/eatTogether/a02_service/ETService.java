package project4.eatTogether.a02_service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project4.eatTogether.a03_dao.ETDao;
import project4.vo.EatTogether;

@Service
public class ETService {
	
	@Autowired
	private ETDao dao;
	
	public List<EatTogether> ETList(EatTogether sch){
		return dao.ETList(sch);
	}
	public String insET(EatTogether ins) {
		dao.insET(ins);
		String msg = "등록성공";
		return msg;
	}
	public EatTogether getET(int eattokey) {
		return dao.getET(eattokey);
	}
	public void uptET(EatTogether upt) {
		dao.uptET(upt);
	}
	public void delET(int eattokey) {
		dao.delET(eattokey);
	}
}
