package www.egg.dao;

import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;


public interface IF_MypageDAO {
	
	public void insert(MemberVO mvo) throws Exception;
	public MemberVO selectone(MemberVO mvo) throws Exception;

}
