package www.egg.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.PaymentVO;

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

	@Override
	public void deleteOrdernum(String m_num) {
		sqlSession.delete(mapperQuery+".deleteordernum", m_num);
		
	}

	@Override
	public Mlist2VO pickOrdernum(String m_num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(mapperQuery+".selectordernum",m_num);
	}

	@Override
	public void modOrderstate(Mlist2VO ovo) {
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
	

}
