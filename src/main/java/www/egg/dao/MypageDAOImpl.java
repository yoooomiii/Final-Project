package www.egg.dao;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

@Repository
public class MypageDAOImpl implements IF_MypageDAO {
	
	private static String mapperQuery="www.egg.dao.IF_MypageDAO";

	@Inject
	private SqlSession sqlsession;

	@Override
	public MemberVO modid(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery + ".selectone", id);
	}

	@Override
	public void modsave(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.update(mapperQuery + ".update", mvo);
	}

	@Override
	public void rsave(ReviewVO rvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery + ".rinsert", rvo);
	}

	@Override
	public void rnum(MlistVO mlvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.selectOne(mapperQuery + mlvo);
	}

	@Override
	public ReviewVO myreview(int num) throws Exception {
		// TODO Auto-generated method stub
		//////여기에 리뷰 조회하는 것 작성해야됨
		return null;
	}

}
