package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.Setter;
import project4.domain.UrVO;
import project4.service.UrService;

@Controller
public class UrController {

	@Autowired
	UrService service;

	@RequestMapping("/urlist.do")
	public String list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.List());
		// d.addAttribute("pageMaker", new PageDTO(cri,123));
		System.out.println("리스트");
		return "/ur/list";
	}

	@GetMapping("/urget.do")
	public void get(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("psc", "조회");
		d.addAttribute("ur", service.get(urkey));
	}

	@GetMapping("/urregisterForm.do")
	public void registerForm() {
	}

	@GetMapping("/urregister.do")
	public String register(UrVO ins, Model d) {
		d.addAttribute("psc", "생성");
		service.register(ins);
		return "redirect:/ur/list.do";
	}

	@GetMapping("/urupdate.do")
	public String update(UrVO upt, Model d) {
		d.addAttribute("psc", "수정");
		service.update(upt);
		System.out.println("urkey" + upt.getUrkey());
		System.out.println("title" + upt.getTitle());
		System.out.println("수정완료");
		return "redirect:/ur/list.do";
	}

	@GetMapping("/urupdateForm.do")
	public void updateForm(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("ur", service.get(urkey));
	}

	@GetMapping("/urdelete.do")
	public String del(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("psc", "삭제");
		service.delete(urkey);
		System.out.println("삭제완료");
		return "redirect:/ur/list.do";
	}

}
