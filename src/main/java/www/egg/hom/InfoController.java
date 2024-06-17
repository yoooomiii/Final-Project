package www.egg.hom;


import java.util.List;

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

	
	// 1:1 占쏙옙占쏙옙 
	@RequestMapping(value="ask", method=RequestMethod.GET)
	public String infoPage (HttpSession session, AskVO avo) throws Exception {
		session.getAttribute("userid"); // 占쏙옙占실울옙占쏙옙 占쏙옙占쏙옙 占쏙옙占싱듸옙 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙
		session.getAttribute("username"); // 占쏙옙占실울옙占쏙옙 占쏙옙占쏙옙 占싱몌옙 占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		session.getAttribute("usergrade");

		avo.setId(session.getId());
		
		System.out.println(session.getAttribute("userid"));

		return "info/askpage";
	}
	
	// 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占�
	@PostMapping("/infoSave")
	public String infoSave(AskVO avo, HttpSession session) throws Exception {
	
		String userid = (String) session.getAttribute("userid");
		avo.setId(userid);
		//iservice.insert(avo);
		System.out.println(avo.toString());

		
		
		return "info/infoList";
	}
	
	// 占쏙옙占쏙옙占싹깍옙
	@GetMapping("/delask")
	public String delask(@RequestParam("num") Integer num) throws Exception {
		
		iservice.delete(num);
		
		return "redirect:info/infoList";
	}
	
	// 占쏙옙占쏙옙占싹깍옙
	@GetMapping("/modask")
	public String modask(@RequestParam("num") Integer num, Model model) throws Exception {
		
		AskVO avo = iservice.mod(num);
		
		model.addAttribute(num);
		
		return "modaskForm";
	}
	
	// 占쏙옙占쏙옙占싹깍옙 占쏙옙占쏙옙 占쏙옙占쏙옙트 占쏙옙회
	@PostMapping("/modSave")
	public String modSave(@ModelAttribute AskVO avo) throws Exception {
	
		iservice.update(avo);
		System.out.println("占쏙옙占실곤옙 占쏙옙溝퓸占쏙옙占쏙옙求占�.");
		
		return "redirect:info/infoList";
	}
	
	// 占쏙옙체占쏙옙회
	@GetMapping("/allList")
	public String allList(Model model) throws Exception {
		
		List<AskVO> askList = iservice.allList();
		
		model.addAttribute("allListitems", askList);
		
		return "infoList";
	}
}
	
	

