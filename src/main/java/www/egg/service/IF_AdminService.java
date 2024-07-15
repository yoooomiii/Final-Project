package www.egg.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.MlistVO;
import www.egg.vo.PageVO;
import www.egg.vo.PaymentVO;

@Service
public interface IF_AdminService {
	public List<MlistVO> orderlist(PageVO pagevo) throws Exception;
	public void deleteOdernum(String m_num) throws Exception;
	public MlistVO pickOrdernum(String m_num) throws Exception;
	public void modOrderstate(MlistVO ovo) throws Exception;
	public PaymentVO pickPaymentnum(String m_num) throws Exception;
	public DeliveryVO pickDeliverynum(String m_num) throws Exception;
	public void modDelivery(DeliveryVO dvo) throws Exception;
	public List<DeliveryVO> deliverylist(PageVO pagevo) throws Exception;
	public List<MlistVO> searchOrder(MlistVO ovo) throws Exception;
	public List<DeliveryVO> searchDelivery(DeliveryVO dvo) throws Exception;
	public void deleteDeliverynum(String m_num) throws Exception;
	public void insertDelivery(DeliveryVO dvo) throws Exception;
	
	public int getTotalCountO(MlistVO ovo)  throws Exception;
	public int getTotalCountD(DeliveryVO dvo)  throws Exception;
	public List<MlistVO> searchOrderPaging(Map<String, Object> spage) throws Exception;
	public List<DeliveryVO> searchDeliveryPaging(Map<String, Object> spage) throws Exception;
	
	public int userIdChk(String userid) throws Exception; // 잘못만듦 (loginservice에있어야댐) 
	
	public List<MemberVO> allMembers() throws Exception;

}
