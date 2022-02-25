package project4.eatTogether.a03_dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.vo.EatTogether;

// springweb.mvc.a03_dao.ETDao
@Repository
public interface ETDao {
	public List<EatTogether> ETList(EatTogether sch);
	public EatTogether getET(int eattokey);
	public void insET(EatTogether ins);
	public void uptET(EatTogether upt);
	public void delET(int eattokey);
}