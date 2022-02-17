package com.yj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yj.domain.DeptVO;
import com.yj.service.DeptService;

@Controller
@RequestMapping("/dept/*")
public class DeptController {

	@Autowired
	DeptService service;

	@GetMapping("/list.do")
	public void getlist(Model d) {
		d.addAttribute("list", service.getList());
	}

	@GetMapping("/detail.do")
	public void getdetail(@RequestParam("deptno") int deptno, Model d) {
		d.addAttribute("dept", service.getDetail(deptno));
	}

	@GetMapping("/register.do")
	public String register(DeptVO dept, Model d) {
		d.addAttribute("psc", "입력완료");
		service.insDept(dept);
		return "dept/list";
	}

	@GetMapping("/update.do")
	public String modify(DeptVO dept, Model d) {
		d.addAttribute("psc", "수정완료");
		service.uptDept(dept);
		return "dept/list";
	}

	@GetMapping("/delete.do")
	public String delete(@RequestParam("deptno") int deptno, Model d) {
		d.addAttribute("psc", "삭제완료");
		service.delDept(deptno);
		return "dept/list";
	}
	
	
	
	
	
	

}