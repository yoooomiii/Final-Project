package www.egg.dao;

import java.util.List;

import www.egg.vo.DeliveryVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.PaymentVO;

public interface IF_AdminDAO {
	public List<Mlist2VO> orderlist();
	public void deleteOrdernum(String m_num);
	public Mlist2VO pickOrdernum(String m_num);
	public void modOrderstate(Mlist2VO ovo);
	public PaymentVO pickPaymentnum(String m_num);
	public DeliveryVO pickDeliverynum(String m_num);
	public void modDelivery(DeliveryVO dvo);
	public List<DeliveryVO> deliverylist();

}
