package com.yj.controller;

import java.lang.ProcessHandle.Info;
import java.util.List;

import org.apache.commons.logging.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yj.domain.BristoVO;
import com.yj.service.BristoServiceImpl;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/bristo/*")
@Log4j
public class BristoController {

	@Setter(onMethod_ = @Autowired)
	BristoServiceImpl service;

	@GetMapping("/list.do")
	public void list(Model d) {
		d.addAttribute("list", service.list());
		d.addAttribute("psc", "list");
		log.info(d);
	}

	@GetMapping("/get.do")
	public void get(@RequestParam("bristokey") int bristokey, Model d) {
		d.addAttribute("bristo", service.get(bristokey));
		d.addAttribute("psc", "get");
		log.info(d);
	}

	@GetMapping("/registerForm.do")
	public void registerForm(Model model) {
		log.info("registerForm");
	}

	@PostMapping("/insert.do")
	public String insert(BristoVO vo, Model d) {
		d.addAttribute("psc", "insert");
		service.insert(vo);
		return "redirect:/bristo/list.do";
	}

	@GetMapping("/update.do")
	public String update(BristoVO vo, Model d) {
		d.addAttribute("psc", "update");
		service.update(vo);
		return "redirect:/bristo/list.do";
	}

	@GetMapping("/delete.do")
	public String delete(int bristokey, Model d) {
		d.addAttribute("psc", "delete");
		service.delete(bristokey);
		return "redirect:/bristo/list.do";
	}
}
