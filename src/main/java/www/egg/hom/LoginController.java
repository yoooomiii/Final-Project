package www.egg.hom;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	@RequestMapping(value = "signUp", method = RequestMethod.GET) // 회원가입 요청 
	public String signUp(@ModelAttribute MemberVO mvo) {
		lservice.signUp(mvo);
		//System.out.println(mvo.toString());
		return "redirect:loginForm";
	}
	@RequestMapping(value = "signIn", method = RequestMethod.GET) // 로그인 요청 (인터셉트에서 한번 걸러지고 난 뒤임)
	public String signIn(@RequestParam("id") String id,
			@RequestParam("pw") String pw, HttpSession session) {
		// return "login/welcome";
		// System.out.println("id/pw: "+id+"/"+pw);
		// System.out.println("홈단 mvo: "+mvo);
		
		MemberVO mvo = lservice.signIn(id); // request한 id로 사용자 정보를 담아 옴 
		if(mvo  != null) { // 사용자 정보가 존재하면 
			if(mvo.getPw().equals(pw)) { // request한 비번과 가져온 사용자 정보의 비번이 일치하면 
				if(session.getAttribute("userid")!=null) { // session에 이미 담긴 값이 있다면 깨끗이 청소
					session.removeAttribute("userid");
					session.removeAttribute("username");
					session.removeAttribute("useremail");
					session.removeAttribute("useraddress");
					session.removeAttribute("usergrade");
				}
				session.setAttribute("userid", mvo.getId()); // session에 가져온 사용자 정보 박기 
				session.setAttribute("username", mvo.getName());
				session.setAttribute("useremail", mvo.getEmail());
				session.setAttribute("useraddress", mvo.getAddress());
				session.setAttribute("usergrade", mvo.getMaster());
			}else { // request가 잘못된 혹은 없는 비번을 줬을 때 
				
			}
		}
		/* 세션에 값이 제대로 저장되었는지 확인
		 * System.out.println("session.getAttribute: "+session.getAttribute("userid"));
		 * System.out.println("session.getAttribute: "+session.getAttribute("username"))
		 * ;
		 */
		return "login/welcome";
		
	
	}
	@GetMapping("logout") // 로그아웃 (세션 삭제) 
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:loginForm";
	}
	
	@RequestMapping(value = "myPage", method = RequestMethod.GET) // 회원만이 접근할 수 있는 페이지라는 설정...
	public String myPage() {
		return "ownPage";
	}
	
}
