package www.egg.hom;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import www.egg.vo.MlistVO;
import www.egg.vo.PaymentVO;
import www.egg.vo.PageVO;
import www.egg.service.IF_AdminService;
import www.egg.service.IF_LoginService;

@Controller
public class AdminController {
	@Inject
	IF_LoginService lservice;
	@Inject
	IF_AdminService aservice;
	
	
	@GetMapping("adminEnter") // 관리자 페이지 
	public String adminEnter(HttpSession session) throws Exception {
		return "admin/adminMain";
	}
	
	@GetMapping("adminMView") 
	public String adminMember(Model model, @ModelAttribute PageVO pagevo) throws Exception {

		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(lservice.getTotalCount());
		
		pagevo.prt();
		
		
		List<MemberVO> mlist = lservice.memberlist(pagevo);
		model.addAttribute("pagevo", pagevo);
		model.addAttribute("members", mlist);
		return "admin/adminMember";
	}
	
	@RequestMapping(value = "adminMSearch", method = RequestMethod.GET)
	public String adminMSearch( Model model, @ModelAttribute MemberVO mvo, @RequestParam("sword") String sw,
			 @RequestParam("city") String city,  @RequestParam("county") String county,
			 @ModelAttribute PageVO pagevo
			) throws Exception {
		String getDetail = "not";
		
		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCount(getDetail));
		pagevo.prt();
		
		// 맵 만들기이...
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		
		System.out.println("濡쒓렇�씤�떒 county: "+county);
		if(county.equals("�쟾泥�")) {
			mvo.setAddress(city);
		}else {
			String readdress = city+" "+county;
			mvo.setAddress(readdress);
		}
		
		List<MemberVO> mlist = null;
		if(sw==null || sw.equals("")) { // 寃��깋�뼱媛� �엳嫄곕굹 �뾾�뒗 寃쎌슦 
			spaging.put("ordervo", mvo);
			mlist = lservice.memberSearch(mvo, pagevo) ; // 모험 start!
		}else {
			mvo.setId(sw);
			spaging.put("ordervo", mvo);
			mlist = lservice.memberSearch(mvo, pagevo) ;
		}
		model.addAttribute("pagevo", pagevo);
		model.addAttribute("members", mlist);
		return "admin/adminMember";
	}
	
	
	@RequestMapping(value = "adminMDelete", method = RequestMethod.GET)
	public String adminMDelete(@RequestParam List<String> chkid,  Model model) throws Exception {
		for (String c: chkid) {
			// System.out.println("List<String> chkid: "+c);
			lservice.quiteAccount(c);
		}
		return  "redirect:adminMView";
	}
	
	@RequestMapping(value = "adminMUpform", method = RequestMethod.GET)
	public String adminMUpform(@RequestParam("id") String id,  Model model) throws Exception {
		MemberVO mvo =  lservice.signIn(id); 
		model.addAttribute("mvo", mvo);
		return "admin/adminMUpform";
	}
	
	@RequestMapping(value = "adminMUp", method = RequestMethod.POST)
	public String adminMUdate(@ModelAttribute MemberVO mvo) throws Exception {
		lservice.modMaster(mvo);
		
		return "redirect:adminMView";
	}
	
	@RequestMapping(value = "adminOView", method = RequestMethod.GET) // 주문내역관리
	public String adminOView(Model model , @ModelAttribute PageVO pagevo) throws Exception {
		String getDetail = "not";
		
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCount(getDetail));
		
		pagevo.prt();
		
		
		
		
		List<MlistVO> olist = aservice.orderlist(pagevo);
		model.addAttribute("orders", olist);
		model.addAttribute("pagevo", pagevo);
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDView", method = RequestMethod.GET)
	public String adminDView(Model model) throws Exception {
		
		List<DeliveryVO> dlist = aservice.deliverylist();
		System.out.println("adminController 배달관리뷰: "+dlist);
		model.addAttribute("deliverys", dlist);
		return "admin/adminDelivery";
	}
	
	@RequestMapping(value = "adminODelete", method = RequestMethod.GET)
	public String adminODelete(@RequestParam List<String> chkid) throws Exception {
		for (String c: chkid) {
			//System.out.println("List<String> chkid: "+c);
			//lservice.quiteAccount(c);
			aservice.deleteOdernum(c);
		}
		return  "redirect:adminOView";
	}
	
	@RequestMapping(value = "adminOUpform", method = RequestMethod.GET)
	public String adminOUpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		MlistVO ovo = aservice.pickOrdernum(m_num);
		model.addAttribute("ovo", ovo);
		return "admin/adminOUpform";
	}
	@RequestMapping(value = "adminOUp", method = RequestMethod.POST)
	public String adminOUdate(@ModelAttribute MlistVO ovo) throws Exception {
		aservice.modOrderstate(ovo);
		return "redirect:adminOView";
	}
	@RequestMapping(value = "adminODetail", method = RequestMethod.GET)
	public String adminODetail(@RequestParam("m_num") String m_num ,  Model model) throws Exception {
		PaymentVO pvo = aservice.pickPaymentnum(m_num);
		model.addAttribute("pvo", pvo);
		return "admin/adminOPayment";
	}
	
	@RequestMapping(value = "adminODelivery", method = RequestMethod.GET)
	public String adminODelivery(@RequestParam("m_num") String m_num ,  Model model) throws Exception {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		return "admin/adminODelivery";
	}
	
	@RequestMapping(value = "adminDUpform", method = RequestMethod.GET)
	public String adminDUpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("dvo", dvo);
		return "admin/adminDUpform";
	}
	@RequestMapping(value = "adminDUp", method = RequestMethod.POST)
	public String adminDUdate(@ModelAttribute DeliveryVO dvo,  Model model) throws Exception {
		aservice.modDelivery(dvo);
		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+"");
		model.addAttribute("dvo", modied_dvo);
		return "admin/adminODelivery";
	}
	
	@RequestMapping(value = "adminOSearch", method = RequestMethod.GET)
	public String adminOSearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("m_state") String m_state, @ModelAttribute MlistVO ovo
			, PageVO pagevo) throws Exception {
		String getDetail = null;
		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		// pagevo.setTotalCount(aservice.getTotalCount()); // 그냥 모든 튜플수 적용
		pagevo.prt();
		
		// 맵 만들기이...
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		
		// vo 셋팅하셈. 
		List<MlistVO> olist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무!
			ovo.setM_state(m_state);
			spaging.put("ordervo", ovo);
			System.out.println("어드민콘트롤러 OVO(sw null): "+ovo.toString());
			olist = aservice.searchOrderPaging(spaging);
			
			getDetail = "forSword";
			pagevo.setTotalCount(aservice.getTotalCount(getDetail)); // 검색결과 튜플개수만큼만 적용 
		}else {
			Integer m_num = Integer.parseInt(sw);
			ovo.setM_num(m_num);
			spaging.put("ordervo", ovo);
			System.out.println("어드민콘트롤러 OVO(sw ok): "+ovo.toString());
			olist = aservice.searchOrderPaging(spaging);
			
			getDetail = "forSelect";
			pagevo.setTotalCount(aservice.getTotalCount(getDetail)); // 검색결과 튜플개수만큼만 적용 
		}
		
		// finally...
		model.addAttribute("orders", olist); // 주문내역vo 제출
		model.addAttribute("pagevo", pagevo); // 페이지vo 제출
		return "admin/adminMlist";
	}
	
	@RequestMapping(value = "adminDSearch", method = RequestMethod.GET)
	public String adminDsearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("d_check") String d_check, @ModelAttribute DeliveryVO dvo) throws Exception {
		
		
		
		// vo 셋팅하셈. 
		System.out.println("어드민콘트롤러 sw: "+sw);
		System.out.println("어드민콘트롤러 d_check: "+d_check);
		List<DeliveryVO> dlist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무!
			dvo.setD_check(d_check);
			System.out.println("어드민콘트롤러 dvo(sw null): "+dvo.toString());
			dlist = aservice.searchDelivery(dvo);
		}else {
			Integer d_no = Integer.parseInt(sw);
			dvo.setD_no(d_no);
			System.out.println("어드민콘트롤러 dvo(sw ok): "+dvo.toString());
			dlist = aservice.searchDelivery(dvo);
		}
		
		model.addAttribute("deliverys", dlist);
		return "admin/adminDelivery";
	}
	
	@GetMapping("adminDDelete") 
	public String adminDDelete(@RequestParam List<String> chkid) throws Exception {
		for(String c: chkid) {
			aservice.deleteDeliverynum(c);
		}
		return "redirect:adminDView";
	}
	
}
