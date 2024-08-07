package www.egg.dao;
import java.util.List;
import java.util.Map;

import www.egg.vo.FavorVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;
import www.egg.vo.PaymentVO;
import www.egg.vo.ReviewVO;


public interface IF_MypageDAO {
	

	public MemberVO modid(String id) throws Exception;
	public void modsave(MemberVO mvo) throws Exception;
	//--------------------------------------------------- 회원정보 수정,저장
	
	public void rsave(ReviewVO rvo) throws Exception;
	public void savefile(Integer re_num, String filename) throws Exception;
	public List<ReviewVO> myreview(String userid) throws Exception;
	public List<ReviewVO>reviewmaster() throws Exception;
	//--------------------------------------------------- 리뷰 내용, 사진 저장, 나의 리뷰 전체불러오기
	
	public List<MlistVO> orderlist(String userid, PageVO pagevo) throws Exception;
	public int getTotalCount(String userid) throws Exception;
	public List<MlistVO> exceldown(String userid) throws Exception;
	//--------------------------------------------------- 주문내역 전체보기
	
	public List<Map<String, Object>> getfile(Integer re_num) throws Exception;	
	//--------------------------------------------------- 리뷰에 저장된 사진 불러오기 + 테스트용
	
	public void pickinsert(FavorVO fvo) throws Exception;	
	//--------------------------------------------------- 찜한 메뉴 저장
//	public boolean deletePick(List<String> pickIds) throws Exception;
	
	public List<FavorVO> picklist(String userid, PageVO pagevo) throws Exception;
	public int getTotalCountPick(String userid) throws Exception;
	//--------------------------------------------------- 찜 리스트 불러오기
	
	public void pickdelete(String f_no) throws Exception;
}
