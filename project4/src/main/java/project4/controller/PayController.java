package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import project4.domain.PayVO;
import project4.service.PayServiceImpl;

@Controller
public class PayController {

	@Autowired
	PayServiceImpl service;

	@RequestMapping("/payregisterForm.do")
	public String registerForm() {
		return "/pay/registerForm";
	}

	@GetMapping("/paylist.do")
	public String list(Model d) {
		d.addAttribute("list", service.list());
		return "pay/list";
	}

	@GetMapping("/payget.do")
	public String get(Model d, int paykey) {
		d.addAttribute("pay", service.get(paykey));
		return "pay/get";

	}

	@GetMapping("/payinsert.do")
	public String insert(PayVO vo) {
		service.insert(vo);
		return "forward:/paylist.do";

	}

	@GetMapping("/paydelete.do")
	public String delete(int paykey) {
		service.delete(paykey);
		return "forward:/paylist.do";
	}

}