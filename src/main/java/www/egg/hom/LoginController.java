package www.egg.hom;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import www.egg.service.IF_LoginService;
import www.egg.vo.MemberVO;

//@Controller
public class LoginController {
	
	@Inject
	IF_LoginService lservice;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {

		return "login/loginForm";
	}
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		return "login/joinForm";
	}
	
	@RequestMapping(value = "signUp", method = RequestMethod.POST) // 회원가입 요청 

	public String signUp(@ModelAttribute MemberVO mvo) {
		lservice.signUp(mvo);
		//System.out.println(mvo.toString());
		return "redirect:/";
	}

	@RequestMapping(value = "signIn", method = RequestMethod.POST) // 로그인 요청 (인터셉트에서 한번 걸러지고 난 뒤임)
	public String signIn(@RequestParam("id") String id,
			@RequestParam("pw") String pw, HttpSession session ,Model model) {
		
		String flag = null;
		
		// return "login/welcome";
		// System.out.println("id/pw: "+id+"/"+pw);
		// System.out.println(" mvo: "+mvo);
		
		MemberVO mvo = lservice.signIn(id); 
		if(mvo  != null) { 
			if(mvo.getPw().equals(pw)) { 
				if(session.getAttribute("userid")!=null) { 
					session.removeAttribute("userid");
					session.removeAttribute("username");
					session.removeAttribute("userphone");
					session.removeAttribute("useremail");
					session.removeAttribute("useraddress");
					session.removeAttribute("usergrade");
				}
				session.setAttribute("userid", mvo.getId()); 
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
				
			}else { 
				flag = "Y";
				model.addAttribute("flag", flag);
				return "login/loginForm";
			}
		}else {
			flag = "Y";
			model.addAttribute("flag", flag);
			return "login/loginForm";
		}
		/* 
		 * System.out.println("session.getAttribute: "+session.getAttribute("userid"));
		 * System.out.println("session.getAttribute: "+session.getAttribute("username"))
		 * ;
		 */
		
	
	}
	@GetMapping("logout") 
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	/*
	 * @RequestMapping(value = "myPage", method = RequestMethod.GET) public String // 로그인 잘 되는지 테스트
	 * myPage() { return "ownPage"; }
	 */
	
	@RequestMapping(value = "quiteAccount", method = RequestMethod.POST)
	public String quiteAccount(@RequestParam("id") String id, HttpSession session) {
		System.out.println(session.getAttribute("userid")+" 제출됨");
		lservice.quiteAccount(id);
		if(session.getAttribute("userid")!=null) { // 회원 탈퇴 후 세션에 남은 정보까지 싹 날림 
			session.removeAttribute("userid");
			session.removeAttribute("username");
			session.removeAttribute("userphone");
			session.removeAttribute("useremail");
			session.removeAttribute("useraddress");
			session.removeAttribute("usergrade");
		}
		System.out.println(session.getAttribute("userid")+"는 세션에서 삭제되었는가?");
		return "redirect:/";
	}
	
	@RequestMapping(value = "byebye", method = RequestMethod.GET)
	public String byebye() {
		return "login/goodBye";
	}
	
	@RequestMapping(value = "quiteConfirm", method = RequestMethod.POST) // 로그인비번컨펌 메소드
	public String quiteConfirm(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		// System.out.println("quiteConfirm: "+pw);
		return "redirect:byebye";
	}
	
	
	
}
