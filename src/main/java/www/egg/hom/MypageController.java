package www.egg.hom;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MypageController {
	
	@GetMapping(value="/mypage")
	public String home() {
		return "mypage";
	}
	
	@GetMapping(value="/mymodpage")
	public String mymod() {
		System.out.println("여기?");
		return "mymod";
	}

}
