package www.egg.hom;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.egg.vo.DeliveryVO;
import www.egg.vo.MemberVO;
import www.egg.vo.Mlist2VO;
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;
import www.egg.service.IF_AdminService;
import www.egg.service.IF_LoginService;

@Controller
public class AdminController {
	@Inject
	IF_LoginService lservice;
	@Inject
	IF_AdminService aservice;
	
	
	@GetMapping("adminEnter") // 관리자 페이지 
	public String adminEnter(HttpSession session) {
		return "admin/adminMain";
	}
	
	@GetMapping("adminMView") 
	public String adminMember(HttpSession session, Model model) {
		List<MemberVO> mlist = lservice.memberlist();
		model.addAttribute("members", mlist);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMSearch", method = RequestMethod.GET)
	public String adminMSearch( Model model, @ModelAttribute MemberVO mvo, @RequestParam("sword") String sw,
			 @RequestParam("city") String city,  @RequestParam("county") String county
			) {
		
		System.out.println("로그인단 county: "+county);
		if(county.equals("전체")) {
			mvo.setAddress(city);
		}else {
			String readdress = city+" "+county;
			mvo.setAddress(readdress);
		}
		
		List<MemberVO> mlist = null;
		if(sw==null || sw.equals("")) { // 검색어가 있거나 없는 경우 
			mlist = lservice.memberSearch(mvo) ;
		}else {
			mvo.setId(sw);
			mlist = lservice.memberSearch(mvo) ;
		}
		model.addAttribute("members", mlist);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMDelete", method = RequestMethod.GET)
	public String adminMDelete(@RequestParam List<String> chkid,  Model model) {
		for (String c: chkid) {
			// System.out.println("List<String> chkid: "+c);
			lservice.quiteAccount(c);
		}
		return  "redirect:adminMView";
	}
	
	@RequestMapping(value = "adminMUpform", method = RequestMethod.GET)
	public String adminMUpform(@RequestParam("id") String id,  Model model) {
		MemberVO mvo =  lservice.signIn(id); 
		model.addAttribute("mvo", mvo);
		return "admin/adminMUpform";
	}
	
	@RequestMapping(value = "adminMUp", method = RequestMethod.POST)
	public String adminMUdate(@ModelAttribute MemberVO mvo) {
		lservice.modMaster(mvo);
		
		return "redirect:adminMView";
	}
	
	@RequestMapping(value = "adminOView", method = RequestMethod.GET) // 주문내역관리
	public String adminOView(Model model) {
		
		List<Mlist2VO> olist = aservice.orderlist();
		model.addAttribute("orders", olist);
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDView", method = RequestMethod.GET)
	public String adminDView(Model model) {
		
		List<DeliveryVO> dlist = aservice.deliverylist();
		System.out.println("adminController 배달관리뷰: "+dlist);
		model.addAttribute("deliverys", dlist);
		return "admin/adminDelivery";
	}
	
	@RequestMapping(value = "adminODelete", method = RequestMethod.GET)
	public String adminODelete(@RequestParam List<String> chkid,  Model model) {
		for (String c: chkid) {
			//System.out.println("List<String> chkid: "+c);
			//lservice.quiteAccount(c);
			aservice.deleteOdernum(c);
		}
		return  "redirect:adminOView";
	}
	
	@RequestMapping(value = "adminOUpform", method = RequestMethod.GET)
	public String adminOUpform(@RequestParam("m_num") String m_num,  Model model) {
		Mlist2VO ovo = aservice.pickOrdernum(m_num);
		model.addAttribute("ovo", ovo);
		return "admin/adminOUpform";
	}
	@RequestMapping(value = "adminOUp", method = RequestMethod.POST)
	public String adminOUdate(@ModelAttribute Mlist2VO ovo) {
		aservice.modOrderstate(ovo);
		return "redirect:adminOView";
	}
	@RequestMapping(value = "adminODetail", method = RequestMethod.GET)
	public String adminODetail(@RequestParam("m_num") String m_num ,  Model model) {
		PaymentVO pvo = aservice.pickPaymentnum(m_num);
		model.addAttribute("pvo", pvo);
		return "admin/adminOPayment";
	}
	
	@RequestMapping(value = "adminODelivery", method = RequestMethod.GET)
	public String adminODelivery(@RequestParam("m_num") String m_num ,  Model model) {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		return "admin/adminODelivery";
	}
	
	@RequestMapping(value = "adminDUpform", method = RequestMethod.GET)
	public String adminDUpform(@RequestParam("m_num") String m_num,  Model model) {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		return "admin/adminDUpform";
	}
	@RequestMapping(value = "adminDUp", method = RequestMethod.POST)
	public String adminDUdate(@ModelAttribute DeliveryVO dvo,  Model model) {
		aservice.modDelivery(dvo);
		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+"");
		model.addAttribute("dvo", modied_dvo);
		return "admin/adminODelivery";
	}
	
	@RequestMapping(value = "adminOSearch", method = RequestMethod.GET)
	public String adminOSearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("m_state") String m_state, @ModelAttribute Mlist2VO ovo
			) {
		
		// vo 셋팅하셈. 
		List<Mlist2VO> olist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무!
			ovo.setM_state(m_state);
			System.out.println("어드민콘트롤러 OVO(sw null): "+ovo.toString());
			olist = aservice.searchOrder(ovo);
		}else {
			Integer m_num = Integer.parseInt(sw);
			ovo.setM_num(m_num);
			System.out.println("어드민콘트롤러 OVO(sw ok): "+ovo.toString());
			olist = aservice.searchOrder(ovo);
		}
		
		
		model.addAttribute("orders", olist);
		return "admin/adminMlist";
	}
	
}
