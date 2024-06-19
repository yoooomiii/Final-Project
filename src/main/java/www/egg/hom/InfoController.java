package www.egg.hom;


import java.util.List;
import java.util.TimeZone;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.egg.service.IF_InfoService;
import www.egg.vo.AskVO;
import www.egg.vo.MemberVO;

//@Controller
public class InfoController {

	@Inject
	IF_InfoService iservice;
	
	// 메인 home
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main () {
		
		return "main";
	}

	
	// 1:1 문의하기
	@RequestMapping(value="ask", method=RequestMethod.GET)
	public String infoPage (HttpSession session, AskVO avo) throws Exception {
		session.getAttribute("userid"); 
		session.getAttribute("username"); 
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		session.getAttribute("usergrade");

		avo.setA_id(session.getId());
		
		System.out.println(session.getAttribute("userid"));

		return "info/askpage";
	}
	
	// 
	@PostMapping("/infoSave")
	public String infoSave(AskVO avo, HttpSession session) throws Exception {
	
		String userid = (String) session.getAttribute("userid");
		avo.setA_id(userid);
		iservice.insert(avo);
		System.out.println(avo.toString());

		return "info/infoList";
	}
	
	// 문의 게시판 조회하기
	@GetMapping("/allList")
	public String allList(AskVO avo, HttpSession session, Model model) throws Exception {
		String id = (String) session.getAttribute("userid");
		avo.setA_id(id);
		List<AskVO> askList = iservice.allList(id);
		
		model.addAttribute("allListitems", askList);
		
		System.out.println(id);
		System.out.println(askList);
	
		
		return "info/infoList";
	}
	

	
}
	
	

