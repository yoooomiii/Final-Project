package www.egg.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MypageDAO;
import www.egg.vo.FavorVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;
import www.egg.vo.ReviewVO;

@Service
public class MypageServiceImpl implements IF_MypageServiece{

	@Inject
	IF_MypageDAO mpdao;

	@Override
	public MemberVO modid(String id) throws Exception { 	//회원정보 수정
		// TODO Auto-generated method stub
		return mpdao.modid(id);
	}

	@Override
	public void modsave(MemberVO mvo) throws Exception { 		//수정된 회원정보 수정
		// TODO Auto-generated method stub
		mpdao.modsave(mvo);
	}

	@Override
	public void rsave(ReviewVO rvo) throws Exception {		//리뷰 내용 저장(사진 포함)
	    // 리뷰 저장
	    mpdao.rsave(rvo);
	    String[] filename = rvo.getFilename();
	    for (String rname : filename) {
	        mpdao.savefile(rvo.getRe_num(), rname);
	    }
	}


	@Override
	public List<ReviewVO> myreview(String userid) throws Exception {		//나의 리뷰 내역 전체보기
		// TODO Auto-generated method stub
		return mpdao.myreview(userid);
	}

	@Override
	public List<MlistVO> orderlist(String userid) throws Exception {		//주문내역 전체보기
		// TODO Auto-generated method stub
		return mpdao.orderlist(userid);
	}


	@Override
	public List<Map<String, Object>> getfile(Integer re_num) throws Exception {	//리뷰번호에 해당되는 사진 가져오기
		// TODO Auto-generated method stub
		return mpdao.getfile(re_num);
	}

	@Override
	public void pickinsert(FavorVO fvo) throws Exception {		//찜한 메뉴 정보를 저장
		// TODO Auto-generated method stub
		mpdao.pickinsert(fvo);
	}

	@Override
	public List<FavorVO> picklist(String userid) throws Exception {			//찜 리스트 불러오기
		// TODO Auto-generated method stub
		return mpdao.picklist(userid);
	}

	@Override
	public void pickdelete(String f_no) throws Exception {
		// TODO Auto-generated method stub
		mpdao.pickdelete(f_no);
	}






	
//	@Override
//	public boolean deletePick(List<String> pickIds) throws Exception {
//        return mpdao.deletePick(pickIds);
//    }



	
	

	








}
