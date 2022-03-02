package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.Setter;
import project4.domain.UserVO;
import project4.service.UserServiceImpl;

@Controller
@SessionAttributes("users")
public class UserController {

	@Autowired
	UserServiceImpl service;

	@ModelAttribute("users")
	public UserVO getUserVO() {
		return new UserVO();
	}

	@GetMapping("/login.do")
	public String login(Model d) {
		d.addAttribute("psc", "로그인");
		System.out.println("로그인 화면 창 (기본 GET");
		return "user/login";
	}

	@RequestMapping("/userlogin.do")
	public String logincheck(@ModelAttribute("users") UserVO vo, Model d) {
		UserVO users = service.login(vo);
		if (users != null) {
			d.addAttribute("psc", "sucess");
			d.addAttribute("users", users);
			System.out.println("로그인 성공");
		} else {
			d.addAttribute("psc", "fail");
			d.addAttribute("users", new UserVO(9999));
			System.out.println("로그인실패");
			return "/user/login";
		}
		return "forward:/main.do";
	}

	
	@RequestMapping("/logout.do")
	public String logout(@ModelAttribute("users") UserVO vo, Model d) {
		UserVO users = new UserVO(999);
		d.addAttribute("users", users);
		return "forward:/main.do";
	}
	
	
	
	
	
	@GetMapping("/userlist.do")
	public void list(Model d) {
		d.addAttribute("psc", "리스트");
		d.addAttribute("list", service.list());
	}

	@RequestMapping("/userinsertForm.do")
	public String registerForm() {
		return "user/insertForm";
	}

	@GetMapping("/usermypage.do")
	public String get(@RequestParam("userkey") int userkey, Model d) {
		d.addAttribute("user", service.get(userkey));
		return "user/mypage";
	}

	@GetMapping("/userinsert.do")
	public String insert(UserVO vo, Model d) {
		d.addAttribute("psc", "삽입");
		service.insert(vo);
		System.out.println("등록완료");
		return "redirect:/main.do";
	}

	@RequestMapping("/userupdateForm.do")
	public void updateForm(@RequestParam("userkey") int userkey, Model d) {
		d.addAttribute("user", service.get(userkey));
	}

	@RequestMapping("/userupdate.do")
	public String update(UserVO vo, Model d) {
		d.addAttribute("psc", "수정");
		service.update(vo);
		System.out.println("수정완료");
		System.out.println("password" + vo.getPassword());
		
		return "redirect:/main.do";
	}

	@GetMapping("/userdelete.do")
	public String delete(@RequestParam("userkey") int userkey, Model d) {
		service.delete(userkey);
		System.out.println("삭제완료");
		UserVO users = new UserVO(999);
		d.addAttribute("users", users);
		return "redirect:/main.do";
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
