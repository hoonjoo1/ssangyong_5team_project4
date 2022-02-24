package com.yj.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.yj.domain.AttachFileDTO;
import com.yj.domain.BristoVO;
import com.yj.domain.FileInfo;
import com.yj.mapper.BristoMapper;

import lombok.Setter;

@Service
public class BristoServiceImpl implements BristoService {
	@Setter(onMethod_ = @Autowired)
	BristoMapper mapper;

	public List<BristoVO> list() {
		return mapper.list();
	}

	public BristoVO get(int bristokey) {
		return mapper.get(bristokey);
	}

	public void insert(BristoVO vo) {
		mapper.insert(vo);
		String msg="";
		String uploadPath="c:\\upload\\";
		if (vo.getReport() != null && vo.getReport().length > 0) {
			try {
				for (MultipartFile mf : vo.getReport()) {
					String fname = mf.getOriginalFilename();
					if (fname != null && !fname.equals("")) {
						File file = new File(uploadPath + fname);
						mf.transferTo(file);
						mapper.insertFileInfo(new FileInfo(uploadPath, fname, "식당 제목:" + vo.getName()));
					}
				}
			} catch (IllegalStateException e) {
				msg = e.getMessage();
			} catch (IOException e) {
				msg = "파일전송오류:" + e.getMessage();
			} catch(Exception e) {
				msg = "기타예외:" + e.getMessage();
			}
		}
		
		
		
		
	}

	public void update(BristoVO vo) {
		mapper.update(vo);
	}

	public void delete(int bristokey) {
		mapper.delete(bristokey);
	}
}
