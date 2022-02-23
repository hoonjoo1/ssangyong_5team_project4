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
	
	// http://localhost:8080/Proejct4_hj/et.do?method=list
	@RequestMapping(params="method=list")
	public String getETList(EatTogether sch, Model d) {
		d.addAttribute("etlist", service.getETList(sch));
		return "\\eatTogether\\eatTogether_list";
	}
	
	// http://localhost:8080/Proejct4_hj/et.do?method=insertFrm
	@RequestMapping(params="method=insertFrm")
	public String insETFrm() {
		return "\\eatTogether\\eatTogether_write";
	}
	
	// http://localhost:8080/Proejct4_hj/et.do?method=insert
	@RequestMapping(params="method=insert")
	public String insET(EatTogether ins, Model d) {
		service.insET(ins);
		return "\\eatTogether\\eatTogether_write";
	}
}
