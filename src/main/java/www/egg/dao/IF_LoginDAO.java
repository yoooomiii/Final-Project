package www.egg.dao;

import java.util.List;

import www.egg.vo.MemberVO;

public interface IF_LoginDAO {
	public void inserOneMember(MemberVO mvo);
	public MemberVO selectMemberId(String id);
	public List<MemberVO> memberlist();
	public void deleteMemberId(String id);
	public List<MemberVO> memberSearch(MemberVO mvo);
	public void modMaster(MemberVO mvo);
	
}
