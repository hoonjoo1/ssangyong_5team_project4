package project4.groupPurchase.Service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project4.groupPurchase.Dao.FoodpubpurDao;
import project4.vo.BoardInfo;
import project4.vo.BoardList;
import project4.vo.Foodpubpur;
import project4.vo.Fppcomm;
import project4.vo.InsFppcomm;

@Service
public class FoodpubpurService {
	
	@Autowired
	private FoodpubpurDao dao;
	
	public void insertFoodpubpur(Foodpubpur ins) {
		dao.insertWrite(ins);
	}
	
	public ArrayList<BoardInfo> getRead(int fppkey){
		return dao.getRead(fppkey);
	}
	
	public ArrayList<BoardList> getBoardList(){
		return dao.getBoardList();
	}
	
	public int uptViewcnt(int fppkey) {
		return dao.uptViewcnt(fppkey);
	}
	
	public ArrayList<Fppcomm> getCommList(int fppkey){
		return dao.getCommList(fppkey);
	}
	
	public void insertcomm(InsFppcomm ins) {
		dao.insertcomm(ins);
	}
	
}
