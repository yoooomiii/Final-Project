package www.egg.hom;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.egg.service.IF_MypageServiece;
import www.egg.vo.MemberVO;

@Controller
public class MypageController {

	@Inject 
	IF_MypageServiece mpservice;

   
    
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
    public String home(HttpSession session) {
        session.getAttribute("userid");
        session.getAttribute("username");
        session.getAttribute("userphone");
        session.getAttribute("useremail");
        session.getAttribute("useraddress");
        System.out.println("두번쨰 테스트중우웅");
        

        return "mypage";
    }
    
	@RequestMapping(value = "write", method = RequestMethod.GET)
    public String review() {
        return "writereview";
    }
    
	@RequestMapping(value = "mod", method = RequestMethod.GET)
    public String modno(HttpSession session) throws Exception  {
        session.getAttribute("userid");
        session.getAttribute("username");
        session.getAttribute("userphone");
        session.getAttribute("useremail");
        session.getAttribute("useraddress");
        return "mymod";
    }
	
	@RequestMapping(value = "msave", method = RequestMethod.POST)
    public String save(@ModelAttribute MemberVO mvo, HttpSession session) throws Exception  {
       mpservice.modsave(mvo);
        System.out.println("저장됨");
        session.getAttribute("userid");
        session.getAttribute("username");
        session.getAttribute("userphone");
        session.getAttribute("useremail");
        session.getAttribute("useraddress");
        return "mypage";
    }
    

 
}
