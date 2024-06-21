package www.egg.service;

import java.util.List;

import org.springframework.stereotype.Service;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;

@Service
public interface IF_AdminService {
	public List<MlistVO> orderlist();
	public void deleteOdernum(String m_num);
	public MlistVO pickOrdernum(String m_num);
	public void modOrderstate(MlistVO ovo);
	public PaymentVO pickPaymentnum(String m_num);
	public DeliveryVO pickDeliverynum(String m_num);
	public void modDelivery(DeliveryVO dvo);
	public List<DeliveryVO> deliverylist();
	public List<MlistVO> searchOrder(MlistVO ovo);
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo);

}
