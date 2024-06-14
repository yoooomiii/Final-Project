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
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "login/loginForm";
	}
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "login/joinForm";
	}
	
	
	@RequestMapping(value = "signUp", method = RequestMethod.GET) // 회원가입 요청 
	public String signUp(@ModelAttribute MemberVO mvo) {
		lservice.signUp(mvo);
		//System.out.println(mvo.toString());
		return "redirect:/";
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
					session.removeAttribute("userphone");
					session.removeAttribute("useremail");
					session.removeAttribute("useraddress");
					session.removeAttribute("usergrade");
				}
				session.setAttribute("userid", mvo.getId()); // session에 가져온 사용자 정보 박기 
				session.setAttribute("username", mvo.getName());
				session.setAttribute("userphone", mvo.getPhone());
				session.setAttribute("useremail", mvo.getEmail());
				session.setAttribute("useraddress", mvo.getAddress());
				session.setAttribute("usergrade", mvo.getMaster());
				
				String grade = String.valueOf(session.getAttribute("usergrade")); // session에서 가져온 사용자 등급
				if(grade.equals("1")){ // 관리자 등급이면 관리자 페이지로 보내라. 
					  return "admin/adminMain"; 
				}
				 
				return "redirect:/";
				
			}else { // request가 잘못된 혹은 없는 비번을 줬을 때 
				return "redirect:login";
			}
		}else {
			return "redirect:login";
		}
		/* 세션에 값이 제대로 저장되었는지 확인
		 * System.out.println("session.getAttribute: "+session.getAttribute("userid"));
		 * System.out.println("session.getAttribute: "+session.getAttribute("username"))
		 * ;
		 */
		
	
	}
	@GetMapping("logout") // 로그아웃 (세션 삭제) 
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "myPage", method = RequestMethod.GET) // 회원만이 접근할 수 있는 페이지라는 설정... 테스트용 컨트롤러
	public String myPage() {
		return "ownPage";
	}
	
}
