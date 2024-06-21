package www.egg.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_AdminDAO;
import www.egg.dao.IF_LoginDAO;
import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.PaymentVO;

@Service
public class AdminServiceImpl implements IF_AdminService {
	
	@Inject
	IF_AdminDAO adao;

	@Override
	public List<Mlist2VO> orderlist() {
		// TODO Auto-generated method stub
		return adao.orderlist();
	}

	@Override
	public void deleteOdernum(String m_num) {
		adao.deleteOrdernum(m_num);
		
	}

	@Override
	public Mlist2VO pickOrdernum(String m_num) {
		// TODO Auto-generated method stub
		return adao.pickOrdernum(m_num);
	}

	@Override
	public void modOrderstate(Mlist2VO ovo) {
		adao.modOrderstate(ovo);
		
	}

	@Override
	public PaymentVO pickPaymentnum(String m_num) {
		// TODO Auto-generated method stub
		return adao.pickPaymentnum(m_num);
	}

	@Override
	public DeliveryVO pickDeliverynum(String m_num) {
		// TODO Auto-generated method stub
		return adao.pickDeliverynum(m_num);
	}

	@Override
	public void modDelivery(DeliveryVO dvo) {
		adao.modDelivery(dvo);
		
	}

	@Override
	public List<DeliveryVO> deliverylist() {
		// TODO Auto-generated method stub
		return adao.deliverylist();
	}

	@Override
	public List<Mlist2VO> searchOrder(Mlist2VO ovo) {
		// TODO Auto-generated method stub
		return adao.searchOrder(ovo);
	}

	@Override
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo) {
		// TODO Auto-generated method stub
		return adao.searchDelivery(dvo);
	}

	


}
