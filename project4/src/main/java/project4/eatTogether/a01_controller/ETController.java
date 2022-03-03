package project4.eatTogether.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project4.eatTogether.a02_service.ETService;
import project4.vo.EatTogether;

@Controller
@RequestMapping("/et.do")
public class ETController {
	
	@Autowired
	private ETService service;
	
	// http://localhost:8080/project4/et.do?method=list
	@RequestMapping(params="method=list")
	public String ETList(EatTogether sch, Model d) {
		d.addAttribute("etlist", service.ETList(sch));
		return "eatTogether_list";
	}
	
	@RequestMapping(params="method=detail")
	public String ETDetail(int eattokey, Model d) {
		d.addAttribute("et",service.getET(eattokey));
		return "eatTogether_detail";
	}
	       
	// http://localhost:8080/project4/et.do?method=insertFrm
	@RequestMapping(params="method=insertFrm")
	public String insETFrm() {
		return "eatTogether_write";
	}
	
	@RequestMapping(params="method=insert")
	public String insET(EatTogether ins, Model d) {
		service.insET(ins);
		return "eatTogether_write";
	}
}
