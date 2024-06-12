package www.egg.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;

@Repository
public class MypageDAOImpl implements IF_MypageDAO {
	
	private static String mapperQuery="www.egg.dao.IF_MypageDAO";

	@Inject
	private SqlSession sqlsession;

	@Override
	public void insert(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery + ".insert", mvo);
	}

	@Override
	public MemberVO modid(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery + ".selectone", id);
	}

}
