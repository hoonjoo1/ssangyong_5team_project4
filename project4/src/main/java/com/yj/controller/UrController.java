package com.yj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yj.domain.Criteria;
import com.yj.domain.PageDTO;
import com.yj.domain.UrVO;
import com.yj.service.UrService;

import lombok.Setter;

@Controller
@RequestMapping("/ur/*")
public class UrController {

	@Setter(onMethod_ = @Autowired)
	UrService service;

	@RequestMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.List());
		// d.addAttribute("pageMaker", new PageDTO(cri,123));
		System.out.println("리스트");
	}

	@GetMapping("/get.do")
	public void get(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("psc", "조회");
		d.addAttribute("ur", service.get(urkey));
	}

	@GetMapping("/registerForm.do")
	public void registerForm() {
	}

	@GetMapping("/register.do")
	public String register(UrVO ins, Model d) {
		d.addAttribute("psc", "생성");
		service.register(ins);
		return "redirect:/ur/list.do";
	}

	@GetMapping("/update.do")
	public String update(UrVO upt, Model d) {
		d.addAttribute("psc", "수정");
		service.update(upt);
		System.out.println("urkey" + upt.getUrkey());
		System.out.println("title" + upt.getTitle());
		System.out.println("수정완료");
		return "redirect:/ur/list.do";
	}

	@GetMapping("/updateForm.do")
	public void updateForm(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("ur", service.get(urkey));
	}

	@GetMapping("/delete.do")
	public String del(@RequestParam("urkey") int urkey, Model d) {
		d.addAttribute("psc", "삭제");
		service.delete(urkey);
		System.out.println("삭제완료");
		return "redirect:/ur/list.do";
	}

}
