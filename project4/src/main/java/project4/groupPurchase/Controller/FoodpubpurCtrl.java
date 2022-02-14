package project4.groupPurchase.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project4.groupPurchase.Service.FoodpubpurService;
import project4.vo.Foodpubpur;
import project4.vo.InsFppcomm;

@Controller
public class FoodpubpurCtrl {
	
	@Autowired
	FoodpubpurService service;
	
	@RequestMapping("/boardlist.do")
	public String groupboardlist(Model d) {
		d.addAttribute("boardlist",service.getBoardList());
		return "WEB-INF\\view\\groupPurchase\\BoardList.jsp";
	}
	
	@RequestMapping("/groupread.do")
	public String groupread(int fppkey,Model d) {
		d.addAttribute("blist",service.getRead(fppkey));
		service.uptViewcnt(fppkey);
		d.addAttribute("commlist",service.getCommList(fppkey));
		d.addAttribute("fppkey", fppkey);
		return "WEB-INF\\view\\groupPurchase\\readBoard.jsp";
	}
	
	@RequestMapping("/groupwrite.do")
	public String groupwrite() {
		
		return "WEB-INF\\view\\groupPurchase\\writeBoard.jsp";
	}
	
	@RequestMapping("/insertfpp.do")
	public String insertFoodpubpur(Foodpubpur ins, Model d) {
		
		d.addAttribute("proc","작성 완료되었습니다");
		service.insertFoodpubpur(ins);
		return "WEB-INF\\view\\groupPurchase\\writeBoard.jsp";
	}
	
	@RequestMapping("/insertcomm.do")
	public String insertComm(InsFppcomm ins, Model d) {
		
		d.addAttribute("proc","작성 완료되었습니다");
		service.insertcomm(ins);
		return "WEB-INF\\view\\groupPurchase\\readBoard.jsp";
	}
}
