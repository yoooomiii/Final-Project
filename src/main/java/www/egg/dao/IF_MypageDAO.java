package www.egg.dao;
import www.egg.vo.MemberVO;
import www.egg.vo.ReviewVO;


public interface IF_MypageDAO {
	

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	public void rsave(ReviewVO rvo) throws Exception;
}
