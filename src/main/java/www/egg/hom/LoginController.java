package www.egg.hom;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import www.egg.service.IF_LoginService;
import www.egg.vo.MemberVO;

@Controller
public class LoginController {
	
	@Inject
	IF_LoginService lservice;
	
	@RequestMapping(value = "login", method = RequestMethod.GET) // 로그인 페이지 
	public String login() {

		return "login/loginForm";
	}
	@RequestMapping(value = "join", method = RequestMethod.GET) // 회원가입 페이지 
	public String join() {
		return "login/joinForm";
	}
	@RequestMapping(value = "signUp", method = RequestMethod.POST) // 회원가입 요청 

	public String signUp(@ModelAttribute MemberVO mvo) {
		lservice.signUp(mvo);
		//System.out.println(mvo.toString());
		return "redirect:/";
	}
	@RequestMapping(value = "signIn", method = RequestMethod.POST) // 로그인 요청
	public String signIn(@RequestParam("id") String id,
		@RequestParam("pw") String pw, HttpSession session ,Model model) {
		String flag = null;
		
		MemberVO mvo = lservice.signIn(id); // 요청 아이디와 일치하는 계정 찾기 
		if(mvo != null) { // 존재하면 
			if(mvo.getPw().equals(pw)) { // 요청 비번과 일치하면 
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
				return "redirect:/"; // 메인으로
			}else { // 요청 비번과 불일치 
				flag = "Y";
				model.addAttribute("flag", flag);
				return "login/loginForm";
			}
		}else { // 요청 아이디와 일치하는 계정이 없으면 
			flag = "Y";
			model.addAttribute("flag", flag);
			return "login/loginForm";
		}
	}
	@GetMapping("logout") // 로그아웃 요청 
	public String logout(HttpSession session) {
		session.invalidate(); // 세션에서 정보 삭제 
		return "redirect:/";
	}
	@RequestMapping(value = "quiteAccount", method = RequestMethod.POST) // 탈퇴 요청
	public String quiteAccount(@RequestParam("id") String id, HttpSession session) {
		lservice.quiteAccount(id); // 요청 계정 삭제 
		if(session.getAttribute("userid")!=null) { // 회원 탈퇴 후 세션에 남은 정보까지 청소 
			session.removeAttribute("userid");
			session.removeAttribute("username");
			session.removeAttribute("userphone");
			session.removeAttribute("useremail");
			session.removeAttribute("useraddress");
			session.removeAttribute("usergrade");
		}
		// System.out.println(session.getAttribute("userid")+"는 세션에서 삭제되었는가?");
		return "redirect:/";
	}
	@RequestMapping(value = "byebye", method = RequestMethod.GET) // 탈퇴 페이지 
	public String byebye() {
		return "login/goodBye";
	}
	
	// ---------------------> 회원 정보 확인  
	@ResponseBody
	@RequestMapping(value = "quiteConfirm_now", method = RequestMethod.POST) // 탈퇴 시 회원 정보 재확인 용도 
	public String quiteConfirm(HttpServletRequest request, Model model) {
		int result = 0;
		String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    
	    MemberVO get_mvo = lservice.signIn(id);
	    if(get_mvo!=null) { // 회원 정보를 찾았으면
	    	String get_pw = get_mvo.getPw();
	    	if(get_pw.equals(pw)) { // 입력한 비번과 일치하면...
	    		result = 1;
	    		return String.valueOf(result);
	    	}else { // 일치하지 않으면...
	    		return String.valueOf(result);
	    	}
	    }
	    return String.valueOf(result);
	}
	
	// ---------------------> 아이디 중복체크 
	 @ResponseBody
	 @RequestMapping(value = "checkSignupId", method = RequestMethod.POST)
	 public String checkSignupId(HttpServletRequest request, Model model) throws Exception {
		 String id = request.getParameter("id");
	     int rowcount = lservice.userIdChk(id); // 요청 아이디와 일치하는 계정 찾기 
	     return String.valueOf(rowcount);
	 }

	
}
