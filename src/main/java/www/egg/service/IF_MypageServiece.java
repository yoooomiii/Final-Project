package www.egg.service;

import java.util.List;

import www.egg.vo.MemberVO;
import www.egg.vo.ReviewVO;

public interface IF_MypageServiece {

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	public void rsave(ReviewVO rvo) throws Exception;
	public List<ReviewVO> myreview() throws Exception;
}
