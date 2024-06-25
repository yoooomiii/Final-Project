package www.egg.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import www.egg.vo.MemberVO;
import www.egg.vo.PageVO;

@Service
public interface IF_LoginService {
	public void signUp(MemberVO mvo);
	public MemberVO signIn(String id);
	public List<MemberVO> memberlist(PageVO pagevo);
	public void quiteAccount(String id);
	public List<MemberVO> memberSearch(MemberVO mvo, PageVO pagevo);
	public void modMaster(MemberVO mvo);
	
	public int getTotalCount(MemberVO mvo)  throws Exception;
	public List<MemberVO> memberSearchPaging(Map<String, Object> spage);

}
