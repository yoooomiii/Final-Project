package www.egg.dao;
import java.util.List;

import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.ReviewVO;


public interface IF_MypageDAO {
	

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	public void rsave(ReviewVO rvo) throws Exception;
	public void rnum(Mlist2VO mlvo) throws Exception;
	public List<ReviewVO> myreview() throws Exception;
	
}
