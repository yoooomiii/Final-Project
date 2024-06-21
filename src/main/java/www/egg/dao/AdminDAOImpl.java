package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;

@Repository
public class AdminDAOImpl implements IF_AdminDAO{
	public static String mapperQuery = "www.egg.dao.IF_AdminDAO";
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<MlistVO> orderlist() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectorders");
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
	public List<DeliveryVO> deliverylist() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(mapperQuery+".selectdeliverys");
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
		System.out.println("어드민dao dvo: "+dvo.toString());
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
	

}
