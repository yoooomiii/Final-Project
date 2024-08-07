package www.egg.dao;

import java.util.List;
import java.util.Map;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;
import www.egg.vo.PaymentVO;

public interface IF_AdminDAO {
	public List<MlistVO> orderlist(PageVO pagevo);
	public void deleteOrdernum(String m_num);
	public MlistVO pickOrdernum(String m_num);
	public void modOrderstate(MlistVO ovo);
	public PaymentVO pickPaymentnum(String m_num);
	public DeliveryVO pickDeliverynum(String m_num);
	public void modDelivery(DeliveryVO dvo);
	public List<DeliveryVO> deliverylist(PageVO pagevo);
	public List<MlistVO> searchOrder(MlistVO ovo);
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo);
	public void deleteDeliverynum(String m_num);
	public void insertDelivery(DeliveryVO dvo);
	
	public int getTotalCountO(MlistVO ovo) throws Exception;
	public int getTotalCountD(DeliveryVO dvo) throws Exception;
	public List<MlistVO> searchOrderPaging(Map<String, Object> spage);
	public List<DeliveryVO> searchDeliveryPaging(Map<String, Object> spage);
	
	public int userIdChk(String userid) throws Exception;
	
	public List<MemberVO> allMembers() throws Exception;

}
