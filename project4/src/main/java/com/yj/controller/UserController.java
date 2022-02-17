package com.yj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yj.domain.UserVO;
import com.yj.service.UserServiceImpl;

import lombok.Setter;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Setter(onMethod_ = @Autowired)
	UserServiceImpl service;

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.list());
	}

	@GetMapping("/insertForm.do")
	public void registerForm() {
	}

	@GetMapping("/get.do")
	public void get(@RequestParam("userkey") int userkey, Model d) {
		d.addAttribute("user", service.get(userkey));
	}

	@GetMapping("/insert.do")
	public String register(UserVO vo, Model d) {
		d.addAttribute("psc", "삽입");
		service.insert(vo);
		System.out.println("등록완료");
		return "redirect:/user/list.do";
	}

	@GetMapping("/updateForm.do")
	public void updateForm(@RequestParam("userkey") int userkey, Model d) {
		d.addAttribute("user", service.get(userkey));
	}

	@GetMapping("/update.do")
	public String update(UserVO vo, Model d) {
		d.addAttribute("psc", "수정");
		service.update(vo);
		System.out.println("수정완료");
		System.out.println("password"+vo.getPassword());
		
		return "redirect:/user/list.do";
	}

	@GetMapping("/delete.do")
	public String delete(@RequestParam("userkey") int userkey) {
		service.delete(userkey);
		System.out.println("삭제완료");
		return "redirect:/user/list.do";
	}
}
