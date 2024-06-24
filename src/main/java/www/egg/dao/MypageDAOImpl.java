package www.egg.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.FavorVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.ReviewVO;

@Repository
public class MypageDAOImpl implements IF_MypageDAO {

	private static String mapperQuery="www.egg.dao.IF_MypageDAO";

	@Inject
	private SqlSession sqlsession;

	@Override
	public MemberVO modid(String id) throws Exception {		//회원정보 수정하기 
		// TODO Auto-generated method stub
		return sqlsession.selectOne(mapperQuery + ".selectone", id);
	}

	@Override
	public void modsave(MemberVO mvo) throws Exception {		//수정된 회원정보 저장
		// TODO Auto-generated method stub
		sqlsession.update(mapperQuery + ".update", mvo);
	}

	@Override
	public List<MlistVO> orderlist(String userid) throws Exception {	//주문내역 불러오기
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".orderlist", userid);
	}

	@Override
	public void rsave(ReviewVO rvo) throws Exception {			//리뷰 내용 저장하기 
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery +".rinsert", rvo);
	}


	@Override
	public List<ReviewVO> myreview(String userid) throws Exception {		//나의 리뷰내역 전체보기
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".myreview", userid);
	}


	@Override
	public void savefile(Integer re_num, String filename) throws Exception {	//리뷰에 사진 파일 저장
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("re_num", re_num);
		paramMap.put("filename", filename);
		sqlsession.insert(mapperQuery + ".savefile", paramMap);
	}

	@Override
	public List<Map<String, Object>> getfile(Integer re_num) throws Exception {		//리뷰에 해당되는 사진 가져오기
		// TODO Auto-generated method stub
		return sqlsession.selectList(mapperQuery + ".getphoto", re_num);
	}

	@Override
	public void pickinsert(FavorVO fvo) throws Exception {
		// TODO Auto-generated method stub
		sqlsession.insert(mapperQuery +".pickinsert", fvo);
	}

//	@Override
//	public boolean deletePick(List<String> pickIds) {
//		try {
//			String sql = "DELETE FROM orders WHERE id = ?";
//			for (String pickId : pickIds) {
//				jdbcTemplate.update(sql, pickId);
//			}
//			return true;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return false;
//		}
//	}
}



//	@Override
//	public List<String> testfile(Integer re_num) throws Exception {			//사진만 불러오기 테스트용
//		// TODO Auto-generated method stub
//		return sqlsession.selectList(mapperQuery +".testfile", re_num);
//	}






