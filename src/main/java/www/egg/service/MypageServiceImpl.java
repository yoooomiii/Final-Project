package www.egg.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_MypageDAO;
import www.egg.vo.MemberVO;

@Service

public class MypageServiceImpl implements IF_MypageService {
	
	@Inject
	IF_MypageDAO mpdao;

	@Override
	public void insert(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		mpdao.insert(mvo);
	}

}
