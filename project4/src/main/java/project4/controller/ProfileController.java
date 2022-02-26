package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.Setter;
import project4.domain.ProfileVO;
import project4.service.ProfileService;

@Controller
@RequestMapping("/profile/*")
public class ProfileController {

	@Setter(onMethod_ = { @Autowired })
	ProfileService service;

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("list", service.list());
	}

	@GetMapping("/insertForm.do")
	public String insertForm(ProfileVO vo) {
		return "redirect:/profile/insertForm.do";
	}

	@GetMapping("/insert.do")
	public void insert(ProfileVO vo) {
		service.insert(vo);
	}

	@GetMapping("/update.do")
	public void update(ProfileVO vo) {
		service.update(vo);
	}

	@GetMapping("/delete.do")
	public void delete(int profilekey) {
		service.delete(profilekey);
	}

	@GetMapping("/get.do")
	public ProfileVO get(int profilekey) {
		return service.get(profilekey);
	}

}
