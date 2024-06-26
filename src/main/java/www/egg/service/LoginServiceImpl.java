package www.egg.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_LoginDAO;
import www.egg.vo.MemberVO;
import www.egg.vo.PageVO;

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
	public List<MemberVO> memberlist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return logindao.memberlist(pagevo);
	}

	@Override
	public void quiteAccount(String id) {
		logindao.deleteMemberId(id);
		
	}

	@Override
	public List<MemberVO> memberSearch(MemberVO mvo, PageVO pagevo) {
		// TODO Auto-generated method stub
		return logindao.memberSearch(mvo, pagevo);
	}

	@Override
	public void modMaster(MemberVO mvo) {
		logindao.modMaster(mvo);
		
	}

	@Override
	public int getTotalCount(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		return logindao.getTotalCount(mvo);
	}

	@Override
	public List<MemberVO> memberSearchPaging(Map<String, Object> spage) {
		// TODO Auto-generated method stub
		return logindao.memberSearchPaging(spage);
	}

	@Override
	public int userIdChk(String userid) throws Exception {
		// TODO Auto-generated method stub
		return logindao.userIdChk(userid);
	}


}
