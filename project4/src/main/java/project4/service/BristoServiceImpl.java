package project4.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import lombok.Setter;
import project4.domain.BristoVO;
import project4.domain.FileInfo;
import project4.mapper.BristoMapper;

@Service
public class BristoServiceImpl implements BristoService {
	@Autowired
	BristoMapper mapper;

	public List<BristoVO> list() {
		return mapper.list();
	}

	public BristoVO get(int bristokey) {
		return mapper.get(bristokey);
	}

	public void insert(BristoVO vo) {
		mapper.insert(vo);
	}

	public void update(BristoVO vo) {
		mapper.update(vo);
	}

	public void delete(int bristokey) {
		mapper.delete(bristokey);
	}
}
