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

@Controller
public class InfoController {
	
	@Inject
	IF_InfoService iservice;
	
	// 메인 home
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String main () {
		
		return "main";
	}
	
	
	// 1:1 문의 
	@RequestMapping(value="ask", method=RequestMethod.GET)
	public String infoPage (HttpSession session, AskVO avo) throws Exception {
		session.getAttribute("userid"); // 세션에서 유저 아이디 값 가져오는 거
		session.getAttribute("username"); // 세션에서 유저 이름 값 가져오는 거
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		session.getAttribute("usergrade");

		avo.setId(session.getId());
		
		System.out.println(session.getAttribute("userid"));
		
		return "info/askpage";
	}
	
	// 문의 내용 등록
	@PostMapping("/infoSave")
	public String infoSave(AskVO avo) throws Exception {
	
		iservice.insert(avo);
		System.out.println("문의가 등록되었습니다.");
		
		return "redirect:info/infoList";
	}
	
	// 삭제하기
	@GetMapping("/delask")
	public String delask(@RequestParam("num") Integer num) throws Exception {
		
		iservice.delete(num);
		
		return "redirect:info/infoList";
	}
	
	// 수정하기
	@GetMapping("/modask")
	public String modask(@RequestParam("num") Integer num, Model model) throws Exception {
		
		AskVO avo = iservice.mod(num);
		
		model.addAttribute(num);
		
		return "modaskForm";
	}
	
	// 수정하기 적용 리스트 조회
	@PostMapping("/modSave")
	public String modSave(@ModelAttribute AskVO avo) throws Exception {
	
		iservice.update(avo);
		System.out.println("문의가 등록되었습니다.");
		
		return "redirect:info/infoList";
	}
	
	// 전체조회
	@GetMapping("/allList")
	public String allList(Model model) throws Exception {
		
		List<AskVO> askList = iservice.allList();
		
		model.addAttribute("allListitems", askList);
		
		return "infoList";
	}
}
	
	

