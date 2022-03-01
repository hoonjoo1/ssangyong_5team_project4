package project4.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import org.apache.log4j.spi.AppenderAttachable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import board.a04_vo.Board;
import lombok.Setter;
import project4.domain.BristoAttachVO;
import project4.domain.BristoVO;
import project4.domain.FileInfo;
import project4.mapper.BristoAttachMapper;
import project4.mapper.BristoMapper;
import project4.vo.BoardInfo;

@Service
public class BristoServiceImpl implements BristoService {
	@Autowired
	BristoMapper mapper;

	@Autowired
	BristoAttachMapper mapper2;

	public List<BristoVO> list() {
		return mapper.list();
	}

	public BristoVO get(int bristokey) {
		return mapper.get(bristokey);
	}

	@Value("${upload}")
	private String uploadPath;

	public void insert(BristoVO ins) {
		mapper.insert(ins);
		String msg = "등록성공";
		// 특정한 위치에 첨부파일 업로드..
		if (ins.getReport() != null && ins.getReport().length > 0) {
			try {
				for (MultipartFile mf : ins.getReport()) {
					String fname = mf.getOriginalFilename();
					if (fname != null && !fname.equals("")) {
						System.out.println("경로명:" + uploadPath);
						System.out.println("첨부파일명:" + fname);
						File file = new File(uploadPath + fname);
						mf.transferTo(file);
						// 첨부파일 정보 DB에 등록..
						mapper2.insert(new BristoAttachVO("1","1","1",true,1));
					}
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = e.getMessage();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				// e.printStackTrace();
				msg = "파일전송오류:" + e.getMessage();
			} catch (Exception e) {
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
