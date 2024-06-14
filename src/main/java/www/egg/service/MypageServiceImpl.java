package www.egg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MypageDAO;
import www.egg.vo.MemberVO;

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

}
