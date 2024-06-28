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
		MemberVO mvo = null;

		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(lservice.getTotalCount(mvo)); // 총튜플수 설정 
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		
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
		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(lservice.getTotalCount(mvo));
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		pagevo.prt();
		
		// 맵 만들기이...
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		
		System.out.println("search county: "+county);
		if(county.equals("전체")) {
			mvo.setAddress(city);
			System.out.println("도시 set: "+mvo.getAddress());
		}else {
			String readdress = city+" "+county;
			mvo.setAddress(readdress);
			System.out.println("도시 set: "+mvo.getAddress());
		}
		
		List<MemberVO> mlist = null;
		if(sw==null || sw.equals("")) { // 寃��깋�뼱媛� �엳嫄곕굹 �뾾�뒗 寃쎌슦 
			spaging.put("membervo", mvo);
			mlist = lservice.memberSearchPaging(spaging);
			
			pagevo.setTotalCount(lservice.getTotalCount(mvo));
		}else {
			mvo.setId(sw);
			spaging.put("membervo", mvo);
			mlist = lservice.memberSearchPaging(spaging);
			
			pagevo.setTotalCount(lservice.getTotalCount(mvo));
		}
		
		if(mlist.size()==0) {
			model.addAttribute("not_data", "(결과가 없습니다.)");
		}
		
		System.out.println("멤버토탈튜플갯수 after: "+pagevo.getTotalCount());
		System.out.println("홈컨 mlist길이: "+mlist.size());
		model.addAttribute("pagevo", pagevo);
		model.addAttribute("members", mlist);
		model.addAttribute("sword", sw); // 클라가 요청했던 검색조건 기억
		model.addAttribute("city", city);
		model.addAttribute("county", county);
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
		// String getDetail = "not";
		MlistVO ovo= null;
		
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountO(ovo));
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		
		pagevo.prt();
		System.out.println("주문내역전체튜플수: "+pagevo.getTotalCount());
		
		List<MlistVO> olist = aservice.orderlist(pagevo);
		model.addAttribute("orders", olist);
		model.addAttribute("pagevo", pagevo);
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDView", method = RequestMethod.GET)
	public String adminDView(Model model , @ModelAttribute PageVO pagevo) throws Exception {
		DeliveryVO dvo= null;
		
		if(pagevo.getPage()==null) {
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 번호: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 총 튜플수 
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		System.out.println("배달토탈튜플수: "+pagevo.getTotalCount());
		
		pagevo.prt();
		
		// finally...
		List<DeliveryVO> dlist = aservice.deliverylist(pagevo);
		// System.out.println("adminController 배달관리뷰: "+dlist);
		model.addAttribute("deliverys", dlist);
		model.addAttribute("pagevo", pagevo);
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
		model.addAttribute("ordernum", m_num);
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
		String dlvtime = dvo.getD_time()+"분";
		dvo.setD_time(dlvtime);
		aservice.modDelivery(dvo);
		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+"");
		model.addAttribute("dvo", modied_dvo);
		return "admin/adminODelivery";
	}
	
	@RequestMapping(value = "adminOSearch", method = RequestMethod.GET)
	public String adminOSearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("m_state") String m_state, @ModelAttribute MlistVO ovo, 
			 PageVO pagevo) throws Exception {
		//MlistVO ovo = null;

		System.out.println("에무스테이토: "+m_state);
		
		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 그냥 모든 튜플수 적용
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		// pagevo.prt();
		//System.out.println("pagevo before: "+pagevo.toString());
		
		// 맵 만들기이...
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		
		// vo 셋팅하셈. 
		List<MlistVO> olist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무!
			if(m_state==null || m_state.equals("")) { // 검색어도 없고 조건도 없으면...
				System.out.println("어드민콘트롤러 OVO(all null): "+ovo.toString());
				olist = aservice.orderlist(pagevo); // DB에서 주문내역 가져와라~^^ 
			}else {
				ovo.setM_state(m_state); 
				spaging.put("ordervo", ovo); // 맵에 넣깅
				System.out.println("어드민콘트롤러 OVO(sw null): "+ovo.toString());
				olist = aservice.searchOrderPaging(spaging); // DB에서 주문내역 가져와라~^^ 
				pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 검색결과 튜플개수만큼만 적용
			}
			
		}else if(m_state==null || m_state.equals("")) {
				Integer m_num = Integer.parseInt(sw);
				ovo.setM_num(m_num);
				spaging.put("ordervo", ovo); // 맵에 넣깅
				System.out.println("어드민콘트롤러 OVO(sw ok): "+ovo.toString());
				olist = aservice.searchOrderPaging(spaging); // DB에서 주문내역 가져와라~^^ 
				pagevo.setTotalCount(aservice.getTotalCountO(ovo)); // 검색결과 튜플개수만큼만 적용 
		}
		
		// System.out.println("pagevo after: "+pagevo.toString());
		// finally...
		for(int i =0; i<olist.size(); ++i) {
			System.out.println("주문내역 촤락: "+olist.get(i));
		}
		System.out.println("주문내역(olist) 크기: "+olist.size());
		
		model.addAttribute("orders", olist); // 주문내역vo 제출
		model.addAttribute("pagevo", pagevo); // 페이지vo 제출
		// model.addAttribute("ordervo", ovo); // 클라가 주문내역 검색요청했던 정보 제출
		model.addAttribute("m_state", m_state);
		model.addAttribute("sword", sw);
		return "admin/adminMlist";
	}
	
	@RequestMapping(value = "adminDSearch", method = RequestMethod.GET)
	public String adminDsearch( Model model, @RequestParam("sword") String sw,  
			@RequestParam("d_check") String d_check, @ModelAttribute DeliveryVO dvo
			, PageVO pagevo) throws Exception {

		if(pagevo.getPage()==null) { // 클라에서 보낸 페이지 정보가 없으면 
			pagevo.setPage(1);
		}
		System.out.println("현재 페이지 정보: "+pagevo.getPage());
		pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 그냥 모든 튜플수 적용
		pagevo.setStartNo(pagevo.getStartNo()-1); // startno -1 순번 보정 
		pagevo.prt();
		System.out.println("배달토탈튜플갯수 after: "+pagevo.getTotalCount());
		
		
		// 맵 만들기이...
		Map<String, Object> spaging = new HashMap<>();
		spaging.put("pagevo", pagevo);
		
		
		// vo 셋팅하셈. 
		System.out.println("어드민콘트롤러 sw: "+sw);
		System.out.println("어드민콘트롤러 d_check: "+d_check);
		List<DeliveryVO> dlist = null;
		if(sw==null || sw.equals("")) { // 검색어 유무!
			if(d_check==null || d_check.equals("")) { // 검색어도 없고 검색조건도 없으면...
				System.out.println("어드민콘트롤러 DVO(all null): "+dvo.toString());
				dlist = aservice.deliverylist(pagevo); // DB에서 배달내역 가져와라~^^ 
			}else {
				dvo.setD_check(d_check);
				spaging.put("deliveryvo", dvo);
				System.out.println("어드민콘트롤러 dvo(sw null): "+dvo.toString());
				//dlist = aservice.searchDelivery(dvo);
				dlist = aservice.searchDeliveryPaging(spaging);
				pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 검색결과 튜플개수만큼만 적용 
			}
		}else if(d_check==null || d_check.equals("")){ // 검색조건 유무!
			Integer d_no = Integer.parseInt(sw);
			dvo.setD_no(d_no);
			spaging.put("deliveryvo", dvo);
			System.out.println("어드민콘트롤러 dvo(sw ok): "+dvo.toString());
			//dlist = aservice.searchDelivery(dvo);
			dlist = aservice.searchDeliveryPaging(spaging); // DB에서 배달내역 가져와라~^^ 
			pagevo.setTotalCount(aservice.getTotalCountD(dvo)); // 검색결과 튜플개수만큼만 적용 
		}
		
		System.out.println("배달토탈튜플갯수 after: "+pagevo.getTotalCount());
		// finally...
		pagevo.prt();
		
		if(dlist.size()==0) {
			model.addAttribute("not_data", "(결과가 없습니다.)");
		}
		
		model.addAttribute("deliverys", dlist); // 배달내역vo 제출
		model.addAttribute("pagevo", pagevo); // 페이지vo 제출
		model.addAttribute("d_no", sw); // 클라가 주문내역 검색요청했던 정보 제출
		model.addAttribute("d_check", dvo.getD_check());
		return "admin/adminDelivery";
	}
	
	@GetMapping("adminDDelete") 
	public String adminDDelete(@RequestParam List<String> chkid) throws Exception {
		for(String c: chkid) {
			aservice.deleteDeliverynum(c);
		}
		return "redirect:adminDView";
	}
	@RequestMapping(value = "adminDSpform", method = RequestMethod.GET)
	public String adminDSpform(@RequestParam("m_num") String m_num,  Model model) throws Exception {
		//DeliveryVO dvo = aservice.pickDeliverynum(m_num);
		model.addAttribute("ordernum", m_num);
		return "admin/adminDSform";
	}
	@RequestMapping(value = "adminDSave", method = RequestMethod.GET)
	public String adminDSpform(@ModelAttribute DeliveryVO dvo, Model model) throws Exception {
		aservice.insertDelivery(dvo); // insert작업 수행 
		//System.out.println("어드민dao dvo before: "+dvo.toString());
		
		DeliveryVO modied_dvo = aservice.pickDeliverynum(dvo.getD_no()+""); // 수행한 거 가져옴 
		//System.out.println("어드민dao dvo after: "+dvo.toString());
		
		Integer d_no = dvo.getD_no();
		String m_num = Integer.toString(d_no);
		model.addAttribute("dvo", modied_dvo);
		model.addAttribute("ordernum",m_num );
		return "admin/adminODelivery";
	}
	
	
}
