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

import www.egg.vo.MemberVO;
import www.egg.service.IF_LoginService;

@Controller
public class AdminController {
	@Inject
	IF_LoginService lservice;
	
	
	@GetMapping("adminEnter") // 관리자 페이지 
	public String adminEnter(HttpSession session) {
		return "admin/adminMain";
	}
	
	@RequestMapping(value = "adminMSearch", method = RequestMethod.GET)
	public String adminMSearch( Model model, @ModelAttribute MemberVO mvo, @RequestParam("sword") String sw,
			 @RequestParam("city") String city,  @RequestParam("county") String county
			) {
		/*
		 * System.out.println("adminMSearch 콤보박스: "+addr);
		 * System.out.println("adminMSearch 검색어: "+sw); // 검색어는 일단 받기만 하고 사용은 추후 
		 * System.out.println("adminMSearch 라디어박스: "+master);
		 */
		System.out.println("로그인단 county: "+county);
		if(county.equals("전체")) {
			mvo.setAddress(city);
		}else {
			String readdress = city+" "+county;
			mvo.setAddress(readdress);
		}
		
		List<MemberVO> mlist = null;
		if(sw==null || sw.equals("")) {
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
	
	@RequestMapping(value = "adminOView", method = RequestMethod.GET)
	public String adminOView() {
		
		
		return "admin/adminMlist";
	}
	@RequestMapping(value = "adminDView", method = RequestMethod.GET)
	public String adminDView() {
		
		
		return "admin/adminDelivery";
	}
	
}
