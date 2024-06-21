package www.egg.service;

import java.util.List;

import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

public interface IF_MypageServiece {

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	public void rsave(ReviewVO rvo) throws Exception;
	public List<ReviewVO> myreview(String userid) throws Exception;
	public List<MlistVO> orderlist(String userid) throws Exception;
	
}
