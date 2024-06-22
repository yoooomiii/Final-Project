package www.egg.service;

import java.util.List;
import java.util.Map;

import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

public interface IF_MypageServiece {

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	public void rsave(ReviewVO rvo) throws Exception;  //리뷰 내용 저장
	public List<ReviewVO>myreview(String userid) throws Exception;
	public List<MlistVO> orderlist(String userid) throws Exception;
	public List<String> getfile(String re_num) throws Exception;
	public List<Map<String, Object>> getfilename(String userid) throws Exception;
	
	
}
