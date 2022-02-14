package project4.groupPurchase.Dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import project4.vo.BoardInfo;
import project4.vo.BoardList;
import project4.vo.Foodpubpur;
import project4.vo.Fppcomm;
import project4.vo.InsFppcomm;

@Repository
public interface FoodpubpurDao {
	//글 작성
	public void insertWrite(Foodpubpur ins);
	//글 조회
	public ArrayList<BoardInfo> getRead(int fppkey);
	//게시판 조회
	public ArrayList<BoardList> getBoardList();
	//조회수 증가
	public int uptViewcnt(int fppkey);
	//댓글 조회
	 public ArrayList<Fppcomm> getCommList(int fppkey);
	//댓글 등록
	 public void insertcomm(InsFppcomm ins);

}
