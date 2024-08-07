package www.egg.service;

import java.util.List;
import java.util.Map;

import www.egg.vo.FavorVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;
import www.egg.vo.ReviewVO;

public interface IF_MypageServiece {

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	
	//--------------------------------------------------- 회원정보 수정, 저장
	
	public void rsave(ReviewVO rvo) throws Exception;  
	public List<ReviewVO>myreview(String userid) throws Exception;
	public List<ReviewVO>reviewmaster() throws Exception;
	//--------------------------------------------------- 리뷰내용 저장(사진 포함), 리뷰 내용 불러오기
	
	public List<Map<String, Object>> getfile(Integer re_num) throws Exception;

	//--------------------------------------------------- 리뷰에 저장된 사진 가져오기 
	
	public List<MlistVO> orderlist(String userid, PageVO pagevo) throws Exception;
	public int getTotalCount(String userid) throws Exception;
	public List<MlistVO> exceldown(String userid) throws Exception;
	//--------------------------------------------------- 주문내역 불러오기
	
	public void pickinsert(FavorVO fvo) throws Exception;
	//--------------------------------------------------- 찜한 메뉴 저장
	
	public List<FavorVO> picklist(String userid, PageVO pagevo) throws Exception;
	public int getTotalCountPick(String userid) throws Exception;
	//--------------------------------------------------- 찜한 메뉴 불러오기
	
	public void pickdelete(String f_no) throws Exception;
	
	
	
}
