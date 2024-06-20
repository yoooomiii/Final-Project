package www.egg.service;

import java.util.List;

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
		// TODO Auto-generated method stub
		mpdao.rsave(rvo);
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





	







}
