package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.BristoAttachVO;
import project4.domain.BristoVO;
import project4.domain.FileInfo;


@Repository
public interface BristoAttachMapper {
	public void insert(BristoAttachVO vo);
	public void delete(String uuid);
	public List<BristoAttachVO> findBybristokey(int bristokey);
}
