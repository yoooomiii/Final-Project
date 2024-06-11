package www.egg.dao;

import www.egg.vo.MemberVO;

public interface IF_LoginDAO {
	public void inserOneMember(MemberVO mvo);
	public MemberVO selectMemberId(String id);
}
