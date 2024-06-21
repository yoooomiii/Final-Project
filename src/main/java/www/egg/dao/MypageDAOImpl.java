package www.egg.dao;


import java.util.List;

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
	public List<MlistVO> orderlist(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".orderlist", userid);
	}

	@Override
	public void rsave(ReviewVO rvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery +".rinsert", rvo);
	}

	@Override
	public void savefile(String filename) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery + ".savefile", filename);
	}

	@Override
	public List<String> getfilename(String re_num) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".getfile", re_num);
	}

	@Override
	public List<ReviewVO> myreview(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".myreview", userid);
	}



	

}
