package www.egg.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MypageDAO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

@Service
public class MypageServiceImpl implements IF_MypageServiece{
	
	@Inject
	IF_MypageDAO mpdao;

	@Override
	public MemberVO modid(String id) throws Exception {
		// TODO Auto-generated method stub
		return mpdao.modid(id);
	}

	@Override
	public void modsave(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		mpdao.modsave(mvo);
	}

	@Override
	public void rsave(ReviewVO rvo) throws Exception {
		 // 리뷰 저장
        mpdao.rsave(rvo);
        
        // 리뷰 저장 후 re_num 값을 가져옴
        Integer re_no=rvo.getRe_no();
        
        // 사진 저장
        String[] filename = rvo.getFilename();
        for (String rname : filename) {
            mpdao.savefile(re_no, rname);
        }
		mpdao.rsave(rvo);
		for(String rname : filename) {
			mpdao.savefile(re_no, rname);
		}
	}



	@Override
	public List<ReviewVO> myreview(String userid) throws Exception {
		// TODO Auto-generated method stub
		return mpdao.myreview(userid);
	}

	@Override
	public List<MlistVO> orderlist(String userid) throws Exception {
		// TODO Auto-generated method stub
		return mpdao.orderlist(userid);
	}


	//@Override

//	public List<Map<String, Object>> getfilename(String userid) throws Exception {
//		// TODO Auto-generated method stub
//		return mpdao.getfilename(userid);
//	}

	@Override
	public List<String> getfile(String re_num) throws Exception {
		// TODO Auto-generated method stub
		return mpdao.getfile(re_num);
	}

	public List<Map<String, Object>> getfilename(String re_num) throws Exception {
		// TODO Auto-generated method stub
		return mpdao.getfilename(re_num);

	}








}
