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
		return "groupPurchase//BoardList";
	}
	
	@RequestMapping("/groupread.do")
	public String groupread(int fppkey,Model d) {
		d.addAttribute("blist",service.getRead(fppkey));
		service.uptViewcnt(fppkey);
		d.addAttribute("commlist",service.getCommList(fppkey));
		d.addAttribute("fppkey", fppkey);
		return "groupPurchase//readBoard";
	}
	
	@RequestMapping("/groupwrite.do")
	public String groupwrite() {
		
		return "groupPurchase//writeBoard";
	}
	
	@RequestMapping("/insertfpp.do")
	public String insertFoodpubpur(Foodpubpur ins, Model d) {
		
		d.addAttribute("proc","작성 완료되었습니다");
		service.insertFoodpubpur(ins);
		return "groupPurchase//writeBoard";
	}
	
	@RequestMapping("/insertcomm.do")
	public String insertComm(InsFppcomm ins, Model d) {
		
		d.addAttribute("proc","작성 완료되었습니다");
		service.insertcomm(ins);
		return "groupPurchase//readBoard";
	}
	
	@RequestMapping("/delboard.do")
	public String delboard(int fppkey, Model d) {
		d.addAttribute("proc", "삭제되었습니다");
		service.delboard(fppkey);
		return "groupPurchase//readBoard";
	}
	@RequestMapping("/uptwrite.do")
	public String uptwrite(int fppkey,Model d) {
		d.addAttribute("fppkey", fppkey);
		d.addAttribute("ublist",service.getffp(fppkey));
		return "groupPurchase//uptBoard";
	}
	
	@RequestMapping("/uptboard.do")
	public String uptboard(Foodpubpur upt, Model d) {
		d.addAttribute("proc", "수정되었습니다");
		service.uptboard(upt);
		return "groupPurchase//uptBoard";
	}
}
