package www.egg.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public List<ReviewVO> myreview(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".myreview", userid);
	}


	@Override
	public void savefile(Integer re_no, String filename) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<>();
        paramMap.put("re_no", re_no);
        paramMap.put("filename", filename);  // 직렬화된 객체가 아닌 문자열
        sqlsession.insert(mapperQuery + ".savefile", paramMap);
	}

	@Override
	public List<Map<String, Object>> getfilename(String userid) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".getfile",userid);
	}

	@Override
	public List<String> getfile(String re_num) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".getphoto", re_num);
	}



	

}
