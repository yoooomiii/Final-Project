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
	public List<Mlist2VO> orderlist();
	public void deleteOdernum(String m_num);
	public Mlist2VO pickOrdernum(String m_num);
	public void modOrderstate(Mlist2VO ovo);
	public PaymentVO pickPaymentnum(String m_num);
	public DeliveryVO pickDeliverynum(String m_num);
	public void modDelivery(DeliveryVO dvo);
	public List<DeliveryVO> deliverylist();
	public List<Mlist2VO> searchOrder(Mlist2VO ovo);
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo);

}
