package www.egg.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;

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

	@Override
	public List<MemberVO> memberlist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectmembers", pagevo);
	}

	@Override
	public void deleteMemberId(String id) {
		sqlSession.delete(mapperQuery+".deleteoneid", id);
		
	}

	@Override
	public List<MemberVO> memberSearch(MemberVO mvo, PageVO pagevo) {
		// TODO Auto-generated method stub
	    String id = mvo.getId();
		if(id==null||id.equals("")) {
			System.out.println("memberSearch DAO 硫붿냼�뱶: "+mvo.toString());
			return sqlSession.selectList(mapperQuery+".selectmsearch", mvo);
		}else {
			return sqlSession.selectList(mapperQuery+".selectoneid", id);
		}
	}

	@Override
	public void modMaster(MemberVO mvo) {
		sqlSession.update(mapperQuery+".updateonemaster", mvo);
		
	}

	@Override
	public int getTotalCount(MemberVO mvo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".getToatalMCount" , mvo);
	}

	@Override
	public List<MemberVO> memberSearchPaging(Map<String, Object> spage) {
				// 맵 추출하기 
				MemberVO mvo = (MemberVO) spage.get("membervo");
				String id = mvo.getId();

				if(id==null||id.equals("")) {
					System.out.println("dao단의 검색찾기 발동");
					return sqlSession.selectList(mapperQuery+".selectmsearch_p", spage);
				}else{
					System.out.println("dao단의 넘버찾기 발동");
					return sqlSession.selectList(mapperQuery+".selectoneid_p", spage);
				}
	}



}
