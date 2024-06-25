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
		// return sqlSession.selectOne(mapperQuery+".getToatalMCount" , mvo);
		
		if(mvo==null) {
			return sqlSession.selectOne(mapperQuery+".getToatalMCount");
		}else {
			// Integer m_num = ovo.getM_num();
			String id = mvo.getId();
			String address = mvo.getAddress();
			System.out.println("getTotalDAO_idString: "+id);
			System.out.println("getTotalDAO_addressString: "+address);
			if(id==null||id.equals("")) {
				return sqlSession.selectOne(mapperQuery+".getToatalMCountForSelect", mvo);
			}else {
				return sqlSession.selectOne(mapperQuery+".getToatalMCountForSword", id);
			}
		}
	}

	@Override
	public List<MemberVO> memberSearchPaging(Map<String, Object> spage) {
				// 맵 추출하기 
				PageVO pvo = (PageVO) spage.get("pagevo");
				MemberVO mvo = (MemberVO) spage.get("membervo");
				String id = mvo.getId();
				
				System.out.println("mvo아이디 가져오라고 dao야: "+mvo.getId());
				System.out.println("startno 가져오라고 dao야: "+pvo.getStartNo());

				if(id==null||id.equals("")) {
					System.out.println("dao단의 검색찾기 발동");
					return sqlSession.selectList(mapperQuery+".selectmsearch_p", spage);
				}else{
					System.out.println("dao단의 넘버찾기 발동");
					return sqlSession.selectList(mapperQuery+".selectoneid_p", spage);
				}
	}



}
