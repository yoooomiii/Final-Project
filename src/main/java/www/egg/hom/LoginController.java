package www.egg.hom;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.egg.service.IF_LoginService;
import www.egg.vo.MemberVO;


@Controller
public class LoginController {
	@Inject
	IF_LoginService lservice;
	// 집가서 자고 싶다.
	
	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "login/signForm";
	}
	@RequestMapping(value = "signUp", method = RequestMethod.GET)
	public String signUp(@ModelAttribute MemberVO mvo) {
		lservice.signUp(mvo);
		//System.out.println(mvo.toString());
		return "login/signForm";
	}
}
