package project4.groupPurchase.Dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import project4.vo.BoardInfo;
import project4.vo.BoardList;
import project4.vo.Foodpubpur;
import project4.vo.FppFileInfo;
import project4.vo.Fppcomm;
import project4.vo.InsFppcomm;

@Repository
public interface FoodpubpurDao {
	//글 작성
	public void insertWrite(Foodpubpur ins);
	//글 조회
	public BoardInfo getRead(int fppkey);
	//게시판 조회
	public ArrayList<BoardList> getBoardList();
	//조회수 증가
	public int uptViewcnt(int fppkey);
	//댓글 조회
	 public ArrayList<Fppcomm> getCommList(int fppkey);
	//댓글 등록
	 public void insertcomm(InsFppcomm ins);
	//댓글 삭제
	 public void delcomm(int fcommkey); 
	//게시글 삭제
	 public void delboard(int fppkey);
	//게시글 수정
	 public void uptboard(Foodpubpur upt);
	//게시글 수정 정보 조회
	 public ArrayList<Foodpubpur> getfpp(int fppkey);
	// 게시글 통합 검색
	 public ArrayList<BoardList> searchBdList(String search);
	// 답글 등록
	 public void insertrecomm(InsFppcomm ins);
	// 파일 업로드
	 public void insertFppFileInfo(FppFileInfo ins);
	// 파일 리스트
	 public ArrayList<String> getFileInfo(int fno);

}
