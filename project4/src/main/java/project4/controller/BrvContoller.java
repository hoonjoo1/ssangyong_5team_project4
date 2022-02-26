package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import project4.domain.BrvVO;
import project4.service.BrvService;

@Controller
@Log4j
@RequestMapping("/brv/*")
public class BrvContoller {

	@Setter(onMethod_ = { @Autowired })
	BrvService service;

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("list", service.list());
	}

	@GetMapping("/insertForm.do")
	public String insertForm(BrvVO vo) {
		return "redirect:/brv/insertForm.do";
	}

	@GetMapping("/insert.do")
	public void insert(BrvVO vo) {
		service.insert(vo);
	}

	@GetMapping("/update.do")
	public void update(BrvVO vo) {
		service.update(vo);
	}

	@GetMapping("/delete.do")
	public void delete(int brvkey) {
		service.delete(brvkey);
	}

	@GetMapping("/get.do")
	public BrvVO get(int brvkey) {
		return service.get(brvkey);
	}

}
