package com.yj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yj.domain.BrVO;
import com.yj.service.BrService;

import lombok.Setter;
import oracle.net.aso.l;

@Controller
@RequestMapping("/br/*")
public class BrController {

	@Setter(onMethod_ = @Autowired)
	BrService service;

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.list());
	}

	@GetMapping("/registerForm.do")
	public void registerForm() {
	}

	@GetMapping("/get.do")
	public void get(@RequestParam("bkey") int bkey, Model d) {
		d.addAttribute("br", service.get(bkey));
	}

	@GetMapping("/register.do")
	public String register(BrVO vo, Model d) {
		d.addAttribute("psc", "삽입");
		service.insert(vo);
		System.out.println("등록완료");
		return "redirect:/br/list.do";
	}

	@GetMapping("/updateForm.do")
	public void updateForm(@RequestParam("bkey") int bkey, Model d) {
		d.addAttribute("br", service.get(bkey));
	}

	@GetMapping("/update.do")
	public String update(BrVO vo, Model d) {
		d.addAttribute("psc", "수정");
		service.update(vo);
		System.out.println("수정완료");
		System.out.println("grade"+vo.getGrade());
		System.out.println("title"+vo.getTitle());
		System.out.println("beky"+vo.getBkey());
		
		return "redirect:/br/list.do";
	}

	@GetMapping("/delete.do")
	public String delete(@RequestParam("bkey") int bkey) {
		service.delete(bkey);
		System.out.println("삭제완료");
		return "redirect:/br/list.do";
	}
}
