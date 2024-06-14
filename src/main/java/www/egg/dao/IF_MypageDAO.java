package www.egg.dao;
import www.egg.vo.MemberVO;


public interface IF_MypageDAO {
	

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
}
