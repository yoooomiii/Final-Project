package www.egg.service;

import org.springframework.stereotype.Service;

import www.egg.vo.MemberVO;

@Service
public interface IF_LoginService {
	public void signUp(MemberVO mvo);
	public MemberVO signIn(String id);
}
