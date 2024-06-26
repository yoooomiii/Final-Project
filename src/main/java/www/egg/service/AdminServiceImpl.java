package www.egg.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import www.egg.dao.IF_AdminDAO;
import www.egg.dao.IF_LoginDAO;
import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;
import www.egg.vo.PaymentVO;

@Service
public class AdminServiceImpl implements IF_AdminService {
	
	@Inject
	IF_AdminDAO adao;

	@Override
	public List<MlistVO> orderlist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return adao.orderlist(pagevo);
	}

	@Override
	public void deleteOdernum(String m_num) {
		adao.deleteOrdernum(m_num);
		
	}

	@Override
	public MlistVO pickOrdernum(String m_num) {
		// TODO Auto-generated method stub
		return adao.pickOrdernum(m_num);
	}

	@Override
	public void modOrderstate(MlistVO ovo) {
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
	public List<DeliveryVO> deliverylist(PageVO pagevo) {
		// TODO Auto-generated method stub
		return adao.deliverylist(pagevo);
	}

	@Override
	public List<MlistVO> searchOrder(MlistVO ovo) {
		// TODO Auto-generated method stub
		return adao.searchOrder(ovo);
	}

	@Override
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo) {
		// TODO Auto-generated method stub
		return adao.searchDelivery(dvo);
	}

	@Override
	public void deleteDeliverynum(String m_num) {
		adao.deleteDeliverynum(m_num);
		
	}

	@Override
	public int getTotalCountO(MlistVO ovo) throws Exception {
		// TODO Auto-generated method stub
		return adao.getTotalCountO(ovo);
	}

	@Override
	public List<MlistVO> searchOrderPaging(Map<String, Object> spage) {
		// TODO Auto-generated method stub
		return adao.searchOrderPaging(spage);
	}

	@Override
	public int getTotalCountD(DeliveryVO dvo) throws Exception {
		// TODO Auto-generated method stub
		return adao.getTotalCountD(dvo);
	}

	@Override
	public List<DeliveryVO> searchDeliveryPaging(Map<String, Object> spage) {
		// TODO Auto-generated method stub
		return adao.searchDeliveryPaging(spage);
	}

	@Override
	public void insertDelivery(DeliveryVO dvo) {
		adao.insertDelivery(dvo);
		
	}

	@Override
	public int userIdChk(String userid) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	


}
