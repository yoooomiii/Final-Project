package www.egg.dao;

import java.util.List;

import www.egg.vo.MemberVO;

public interface IF_LoginDAO {
	public void inserOneMember(MemberVO mvo);
	public MemberVO selectMemberId(String id);
	public List<MemberVO> memberlist();
}
