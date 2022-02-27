package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import project4.domain.BrVO;
import project4.service.BrService;

@Controller
public class BrController {

	@Autowired
	BrService service;

	@GetMapping("/brlist.do")
	public String list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.list());
		return "br/list";
	}

	@GetMapping("/brregisterForm.do")
	public void registerForm() {
	}

	@GetMapping("/brget.do")
	public void get(@RequestParam("bkey") int bkey, Model d) {
		d.addAttribute("br", service.get(bkey));
	}

	@GetMapping("/brregister.do")
	public String register(BrVO vo, Model d) {
		d.addAttribute("psc", "삽입");
		service.insert(vo);
		System.out.println("등록완료");
		return "redirect:/br/list.do";
	}

	@GetMapping("/brupdateForm.do")
	public void updateForm(@RequestParam("bkey") int bkey, Model d) {
		d.addAttribute("br", service.get(bkey));
	}

	@GetMapping("/brupdate.do")
	public String update(BrVO vo, Model d) {
		d.addAttribute("psc", "수정");
		service.update(vo);
		System.out.println("수정완료");
		System.out.println("grade"+vo.getGrade());
		System.out.println("title"+vo.getTitle());
		System.out.println("beky"+vo.getBkey());
		
		return "redirect:/br/list.do";
	}

	@GetMapping("/brdelete.do")
	public String delete(@RequestParam("bkey") int bkey) {
		service.delete(bkey);
		System.out.println("삭제완료");
		return "redirect:/br/list.do";
	}
}
