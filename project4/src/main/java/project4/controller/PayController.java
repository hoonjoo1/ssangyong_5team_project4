package project4.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pay/*")
@Controller
public class PayController {

	@GetMapping("/registerForm.do")
	public void registerForm() {
		
	}
	
	@GetMapping("/list.do")
	public void list() {
		
	}

	@GetMapping("/get.do")
	public void get() {
		
	}

	@GetMapping("/insert.do")
	public void insert() {
		
	}
	@GetMapping("/delete.do")
	public void delete() {
		
	}
	
	
	
}
