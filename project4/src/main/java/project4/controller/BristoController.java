package project4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import project4.domain.BristoVO;
import project4.service.BristoServiceImpl;

@Controller
public class BristoController {

	@Autowired
	BristoServiceImpl service;

	@GetMapping("/bristolist.do")
	public String list(Model d) {
		d.addAttribute("list", service.list());
		d.addAttribute("psc", "list");
		return "bristo/list";
	}

	@GetMapping("/bristoget.do")
	public void get(@RequestParam("bristokey") int bristokey, Model d) {
		d.addAttribute("bristo", service.get(bristokey));
		d.addAttribute("psc", "get");
	}

	@GetMapping("/bristoregisterForm.do")
	public void registerForm(Model model) {
	}

	@PostMapping("/bristoinsert.do")
	public String insert(BristoVO vo, Model d) {
		d.addAttribute("psc", "insert");
		service.insert(vo);
		return "redirect:/bristo/list.do";
	}

	@GetMapping("/bristoupdate.do")
	public String update(BristoVO vo, Model d) {
		d.addAttribute("psc", "update");
		service.update(vo);
		return "redirect:/bristo/list.do";
	}

	@GetMapping("/bristodelete.do")
	public String delete(int bristokey, Model d) {
		d.addAttribute("psc", "delete");
		service.delete(bristokey);
		return "redirect:/bristo/list.do";
	}
}
