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
import www.egg.vo.PaymentVO;

@Repository
public class AdminDAOImpl implements IF_AdminDAO{
	public static String mapperQuery = "www.egg.dao.IF_AdminDAO";
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<MlistVO> orderlist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectorders", pagevo);
	}

	@Override
	public void deleteOrdernum(String m_num) {
		sqlSession.delete(mapperQuery+".deleteordernum", m_num);
		
	}

	@Override
	public MlistVO pickOrdernum(String m_num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectordernum",m_num);
	}

	@Override
	public void modOrderstate(MlistVO ovo) {
		sqlSession.update(mapperQuery+".updateorderstate", ovo);
		
	}

	@Override
	public PaymentVO pickPaymentnum(String m_num) {
		// TODO Auto-generated method stub
	
		return sqlSession.selectOne(mapperQuery+".selectpaymentnum", m_num);
	}

	@Override
	public DeliveryVO pickDeliverynum(String m_num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectdeliverynum", m_num);
	}

	@Override
	public void modDelivery(DeliveryVO dvo) {
		sqlSession.update(mapperQuery+".updatedelivery", dvo);
		
	}

	@Override
	public List<DeliveryVO> deliverylist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectdeliverys", pagevo);
	}

	@Override
	public List<MlistVO> searchOrder(MlistVO ovo) {
		// Integer m_num = ovo.getM_num();
		 	String m_num = ovo.getM_num()+"";
			String m_state = ovo.getM_state();
			if(m_state==null||m_state.equals("")) {
				return sqlSession.selectList(mapperQuery+".selectordernum", m_num);
			}
			return sqlSession.selectList(mapperQuery+".selectordersearch", ovo);
		
	}

	@Override
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo) {
		// TODO Auto-generated method stub
		String d_no = dvo.getD_no()+"";
		String d_check = dvo.getD_check();
		System.out.println("�뼱�뱶誘펋ao dvo: "+dvo.toString());
		if(d_check==null||d_check.equals("")) {
			return sqlSession.selectList(mapperQuery+".selectdeliverynum", d_no);
		}
		return sqlSession.selectList(mapperQuery+".selectdeliverysearch", dvo);
	}

	@Override
	public void deleteDeliverynum(String m_num) {
		// TODO Auto-generated method stub
		sqlSession.delete(mapperQuery+".deletedeliverynum", m_num);
	}


	@Override
	public List<MlistVO> searchOrderPaging(Map<String, Object> spage) {
		// 맵 추출하기 
		MlistVO ovo = (MlistVO) spage.get("ordervo");
		PageVO pvo = (PageVO) spage.get("pagevo");
		
		String m_num = ovo.getM_num()+"";
		String m_state = ovo.getM_state();
		
		System.out.println("어드민dao ovo: "+ovo.toString());
		System.out.println("startno 가져오라고 dao야: "+pvo.getStartNo());
		if(m_state==null||m_state.equals("")) {
			System.out.println("dao단의 넘버찾기 발동");
			return sqlSession.selectList(mapperQuery+".selectordernum_p", spage);
		}else{
			System.out.println("dao단의 검색찾기 발동");
			return sqlSession.selectList(mapperQuery+".selectordersearch_p", spage);
		}
	}
	
	@Override
	public int getTotalCountO(MlistVO ovo) throws Exception {
		
		if(ovo==null) {
			return sqlSession.selectOne(mapperQuery+".getToatalOCount");
		}else {
			// Integer m_num = ovo.getM_num();
			String m_num= ovo.getM_num()+""; 
			String m_state =  ovo.getM_state();
			if(m_state==null||m_state.equals("")) {
				//System.out.println("어드민dao m_num: "+m_num);
				return sqlSession.selectOne(mapperQuery+".getToatalOCountForSword", m_num);
			}else {
				//System.out.println("어드민dao m_state: "+m_state);
				return sqlSession.selectOne(mapperQuery+".getToatalOCountForSelect", m_state);
			}
		}
	}

	@Override
	public int getTotalCountD(DeliveryVO dvo) throws Exception {
		// TODO Auto-generated method stub
		if(dvo==null) {
			return sqlSession.selectOne(mapperQuery+".getToatalDCount");
		}else {
			String d_no = Integer.toString(dvo.getD_no()); 
			String d_check = dvo.getD_check();
			if(d_no==null) {
				return sqlSession.selectOne(mapperQuery+".getToatalDCountForSelect", d_check);
			}else {
				return sqlSession.selectOne(mapperQuery+".getToatalDCountForSword", d_no);
			}
		}
	}

	@Override
	public List<DeliveryVO> searchDeliveryPaging(Map<String, Object> spage) {
		// 맵 추출하기 
				//PageVO pvo = (PageVO) spage.get("pagevo");
				DeliveryVO dvo = (DeliveryVO) spage.get("deliveryvo");
				
				//String m_num = ovo.getM_num()+"";
				String d_check = dvo.getD_check();
				if(d_check==null||d_check.equals("")) {
					return sqlSession.selectList(mapperQuery+".selectdeliverynum_p", spage);
				}else {
					return sqlSession.selectList(mapperQuery+".selectdeliverysearch_p", spage);
				}
	}

	@Override
	public void insertDelivery(DeliveryVO dvo) {
		sqlSession.insert(mapperQuery+".insertdelivery", dvo);
		
	}

	@Override
	public int userIdChk(String userid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
