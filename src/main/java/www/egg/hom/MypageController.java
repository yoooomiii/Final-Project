package www.egg.hom;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import www.egg.service.IF_MypageService;
import www.egg.vo.MemberVO;


@Controller
public class MypageController {
	
	@Autowired
	IF_MypageService mpservice;
	
	
	@GetMapping(value="/mypage")
	public String home(HttpSession session) {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		System.out.println(session.getAttribute("userid"));
		return "mypage";
	}
	
	

	@GetMapping(value="/review")
	public String review() {
		return "writereview";
	}
	
	
	@GetMapping(value="/mod")
	public String modno(HttpSession session) throws Exception  {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		return "mymod";
	}
	
	@PostMapping(value="/modsave")    //수정 저장 하기
	public String modnosave(@ModelAttribute MemberVO mvo,HttpSession session) throws Exception  {
		session.getAttribute("userid");
		session.getAttribute("username");
		session.getAttribute("useremail");
		session.getAttribute("useraddress");
		mpservice.modsave(mvo);
		
		return "redirect:mypage";
	}

}
