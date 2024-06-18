package www.egg.service;

import java.util.List;

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

	@Override
	public MemberVO signIn(String id) {
		// TODO Auto-generated method stub
		return logindao.selectMemberId(id);
	}

	@Override
	public List<MemberVO> memberlist() {
		// TODO Auto-generated method stub
		return logindao.memberlist();
	}

	@Override
	public void quiteAccount(String id) {
		logindao.deleteMemberId(id);
		
	}

	@Override
	public List<MemberVO> memberSearch(MemberVO mvo) {
		// TODO Auto-generated method stub
		return logindao.memberSearch(mvo);
	}

	@Override
	public void modMaster(MemberVO mvo) {
		logindao.modMaster(mvo);
		
	}


}
