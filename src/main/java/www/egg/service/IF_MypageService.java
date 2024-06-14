package www.egg.service;

import www.egg.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public interface IF_MypageService {

	public void insert(MemberVO mvo) throws Exception;
	public MemberVO modid(String id) throws Exception;
	public MemberVO modsave(MemberVO mvo) throws Exception;
}
