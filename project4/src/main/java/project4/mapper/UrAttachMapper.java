package project4.mapper;

import java.util.List;

import project4.domain.UrAttachVO;

public interface UrAttachMapper {
	public void insert(UrAttachVO vo);

	public void delete(String uuid);

	public List<UrAttachVO> findByBno(int urkey);

	public void deleteAll(int urkey);

	public List<UrAttachVO> getOldFiles();
}
