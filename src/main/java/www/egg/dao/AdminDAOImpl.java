package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;

@Repository
public class AdminDAOImpl implements IF_AdminDAO{
	public static String mapperQuery = "www.egg.dao.IF_AdminDAO";
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<Mlist2VO> orderlist() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectorders");
	}
	

}
