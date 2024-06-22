package www.egg.dao;

import java.util.List;

import www.egg.vo.MemberVO;
import www.egg.vo.PageVO;

public interface IF_LoginDAO {
	public void inserOneMember(MemberVO mvo);
	public MemberVO selectMemberId(String id);
	public List<MemberVO> memberlist(PageVO pagevo);
	public void deleteMemberId(String id);
	public List<MemberVO> memberSearch(MemberVO mvo, PageVO pagevo);
	public void modMaster(MemberVO mvo);
	
}
