package com.yj.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yj.domain.UserVO;
import com.yj.service.UserServiceImpl;

import lombok.Setter;

@Controller
@SessionAttributes("users")
@RequestMapping("/user/*")
public class UserController {
	
	@Setter(onMethod_ = @Autowired)
	UserServiceImpl service;

	@ModelAttribute("users")
	public UserVO getUserVO() {
		return new UserVO();
	}
	
	
	@GetMapping("/login.do")
	public void login(Model d) {
		d.addAttribute("psc", "로그인");
		System.out.println("로그인 화면 창 (기본 GET");
	}

	@RequestMapping("/login.do")
	public String logincheck(@ModelAttribute("users") UserVO vo, Model d) {
		UserVO users = service.login(vo);
		if(users!=null) {
			d.addAttribute("msg","로그인 성공");
			d.addAttribute("users", users);
			System.out.println("로그인 성공");
		}else {
			d.addAttribute("msg","로그인 실패");
			System.out.println("로그인실패");
		}
		return "forward:/main.do";
	}

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.list());
	}

	@GetMapping("/insertForm.do")
	public void registerForm() {
	}

	@GetMapping("/mypage.do")
	public String get(@RequestParam("userkey") int userkey, Model d) {
		d.addAttribute("user", service.get(userkey));
		return "user/mypage";
	}

	@GetMapping("/insert.do")
	public String insert(UserVO vo, Model d) {
		d.addAttribute("psc", "삽입");
		service.insert(vo);
		System.out.println("등록완료");
		return "redirect:/main.do";
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
		System.out.println("password" + vo.getPassword());

		return "redirect:/user/list.do";
	}

	@GetMapping("/delete.do")
	public String delete(@RequestParam("userkey") int userkey) {
		service.delete(userkey);
		System.out.println("삭제완료");
		return "redirect:/user/list.do";
	}

	// 아이디 중복 검사
	@RequestMapping(value = "/userIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String userIdChkPOST(String id) throws Exception {
		System.out.println("IdChk");
		int result = service.idCheck(id);
		System.out.println("결과" + result);
		if (result != 0) {
			return "fail";
		} else {
			return "success"; 

		}

	}
}
