package project4.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class a {
	
	@RequestMapping("/uploadFileWithAjax")
	@ResponseBody
	public String a(MultipartFile[] uploadFile) {
		String uploadfolder = "/Users/davide/upload/tmp";
		for (MultipartFile multipartFile : uploadFile) {
			String uploadFileName = multipartFile.getOriginalFilename();
			// remove path for IE
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			File saveFile = new File(uploadfolder, uploadFileName);
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		System.out.println("fasdfas");
		return "e";
	}

	@GetMapping("/a.do")
	public String a(Model d) {
		return "bristo/a";
	}
}