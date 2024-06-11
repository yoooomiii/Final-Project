package www.egg.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;

@Repository
public class LoginDAOImpl implements IF_LoginDAO{
	public static String mapperQuery = "www.egg.dao.IF_LoginDAO";
	@Inject
	SqlSession sqlSession;
	

	@Override
	public void inserOneMember(MemberVO mvo) {
		 sqlSession.insert(mapperQuery+".insertone", mvo);
		
	}

	@Override
	public MemberVO selectMemberId(String id) {
		return  sqlSession.selectOne(mapperQuery+".selectoneid", id); 
		
	}

}
