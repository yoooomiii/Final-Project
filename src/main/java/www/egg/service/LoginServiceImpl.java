package www.egg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_LoginDAO;
import www.egg.vo.MemberVO;

@Service
public class LoginServiceImpl implements IF_LoginService {
	
	@Inject
	IF_LoginDAO logindao;

	@Override
	public void signUp(MemberVO mvo) {
		logindao.inserOneMember(mvo);
		
	}

}
