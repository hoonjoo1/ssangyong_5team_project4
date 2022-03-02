package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.net.aso.d;
import project4.domain.CartVO;
import project4.service.CartService;
import project4.service.CartServiceImpl;

@Controller
public class CartContoller {

	@Autowired
	CartServiceImpl service;

	@RequestMapping("/cartregisterForm.do")
	public String registerForm() {
		return "/cart/registerForm";
	}

	@GetMapping("/cartlist.do")
	public String list(Model d) {
		d.addAttribute("list", service.list());
		return "cart/list";
	}

	@GetMapping("/cartget.do")
	public String get(Model d, int cartkey) {
		d.addAttribute("cart", service.get(cartkey));
		return "cart/get";

	}

	@GetMapping("/cartinsert.do")
	public String insert(CartVO vo) {
		service.insert(vo);
		return "forward:/cartlist.do";

	}

	@GetMapping("/cartdelete.do")
	public String delete(int cartkey) {
		service.delete(cartkey);
		return "forward:/cartlist.do";
	}

}
