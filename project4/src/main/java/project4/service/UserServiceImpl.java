package project4.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.Setter;
import project4.domain.UserVO;
import project4.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Setter(onMethod_ = @Autowired)
	UserMapper mapper;

	public List<UserVO> list() {
		return mapper.list();
	}

	public UserVO get(int Userkey) {
		return mapper.get(Userkey);
	}

	public void insert(UserVO vo) {
		mapper.insert(vo);
	}

	public void update(UserVO vo) {
		mapper.update(vo);
	}

	public void delete(int Userkey) {
		mapper.delete(Userkey);
	}

	public String logincheck(UserVO vo, HttpSession session) {
		String name = mapper.logincheck(vo);
		if(name!=null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("password", vo.getPassword());
		}
		return name;
	}
	
	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}

	public UserVO login(UserVO login) {
		return mapper.login(login);
	}
	
}
