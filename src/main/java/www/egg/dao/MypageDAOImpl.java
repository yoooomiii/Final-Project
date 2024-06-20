package www.egg.dao;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
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
	public void rnum(Mlist2VO mlvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.selectOne(mapperQuery + mlvo);
	}

	@Override
	public List<ReviewVO> myreview() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery+".myreview");
	}


	

}
