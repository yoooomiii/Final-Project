package www.egg.dao;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;

@Repository
public class MypageDAOImpl implements IF_MypageDAO {
	
	private static String mapperQuery="www.egg.dao.IF_MypageDAO";

	@Autowired
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

	@Override
	public void modsave(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.update(mapperQuery + ".update", mvo);
	}

}
