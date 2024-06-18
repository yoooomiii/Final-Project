package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.MemberVO;

@Service
public interface IF_LoginService {
	public void signUp(MemberVO mvo);
	public MemberVO signIn(String id);
	public List<MemberVO> memberlist();
	public void quiteAccount(String id);
	public List<MemberVO> memberSearch(MemberVO mvo);
	public void modMaster(MemberVO mvo);

}
