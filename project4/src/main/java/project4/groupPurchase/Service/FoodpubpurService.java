package project4.groupPurchase.Service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import project4.groupPurchase.Dao.FoodpubpurDao;
import project4.vo.BoardInfo;
import project4.vo.BoardList;
import project4.vo.Foodpubpur;
import project4.vo.FppFileInfo;
import project4.vo.Fppcomm;
import project4.vo.InsFppcomm;

@Service
public class FoodpubpurService {
	
	@Autowired
	private FoodpubpurDao dao;
	
	@Value("${upload}")
	private String uploadPath;
	
	public String insertFoodpubpur(Foodpubpur ins) {
		dao.insertWrite(ins);
		
		String msg = "등록성공";
		// 특정한 위치에 첨부파일 업로드..
		if (ins.getReport() != null && ins.getReport().length > 0) {
			try {
				for (MultipartFile mf : ins.getReport()) {
					String fname = mf.getOriginalFilename();
					if (fname != null && !fname.equals("")) {
						System.out.println("경로명:" + uploadPath);
						System.out.println("첨부파일명:" + fname);
						File file = new File(uploadPath + fname);
						mf.transferTo(file);
						// 첨부파일 정보 DB에 등록..
						dao.insertFppFileInfo(new FppFileInfo(uploadPath, fname, "게시물 제목:" + ins.getTitle()));
					}
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = e.getMessage();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = "파일전송오류:" + e.getMessage();
			} catch(Exception e) {
				msg = "기타예외:" + e.getMessage();
			}
		}
		return msg;
	}
	
	public BoardInfo getRead(int fppkey){
		BoardInfo b = dao.getRead(fppkey);
		b.setFnames(dao.getFileInfo(fppkey));
		return b;
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
	
	public void insertrecomm(InsFppcomm ins) {
		dao.insertrecomm(ins);
	}
	
	public void delboard(int fppkey) {
		dao.delboard(fppkey);
	}
	
	public ArrayList<Foodpubpur> getffp(int fppkey){
		return dao.getfpp(fppkey);
	}
	
	public void uptboard(Foodpubpur upt) {
		dao.uptboard(upt);
	}
	
	public ArrayList<BoardList> searchBdList(String search){
		return dao.searchBdList(search);
	}
	
}
