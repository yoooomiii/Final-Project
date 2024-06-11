package www.egg.hom;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import www.egg.service.IF_MypageService;
import www.egg.vo.MemberVO;

@Controller
public class MypageController {
	
	@Inject
	IF_MypageService mpservice;
	
	@GetMapping(value="/mypage")
	public String home() {
		return "mypage";
	}
	
	@GetMapping(value="/mymodpage")
	public String mymod() {
		return "mymod";
	}
	
	@GetMapping(value="/modinput")
	public void modinput(@ModelAttribute MemberVO mvo) throws Exception {
		mpservice.insert(mvo);
		
	}

}
