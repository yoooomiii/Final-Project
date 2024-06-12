package www.egg.hom;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	

	@GetMapping(value="/review")
	public String review() {
		return "writereview";
	}
	
	@GetMapping(value="/mod")
	public String modno(@ModelAttribute MemberVO mvo,Model model) throws Exception  {
		model.addAttribute("mvo", mvo);
		System.out.println("fuck");
		return "mymod";
	}
	
	@GetMapping(value="/modsave")
	public String modno(@RequestParam("id") String id,
			Model model) throws Exception  {
		
		MemberVO mvo = mpservice.modid(id);
		System.out.println("수정된 글 정보 확인");
		
		return "redirect:mypage";
	}

}
