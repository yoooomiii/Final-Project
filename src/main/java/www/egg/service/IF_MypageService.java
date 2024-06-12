package www.egg.service;

import www.egg.vo.MemberVO;

public interface IF_MypageService {

	public void insert(MemberVO mvo) throws Exception;
	public MemberVO modid(String id) throws Exception;
}
