package project4.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import project4.domain.UrAttachVO;
@Repository
public interface UrAttachMapper {
	public void insert(UrAttachVO vo);

	public void delete(String uuid);

	public List<UrAttachVO> findByBno(int urkey);

	public void deleteAll(int urkey);

	public List<UrAttachVO> getOldFiles();
}
