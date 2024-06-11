package www.egg.hom;

import org.springframework.web.bind.annotation.GetMapping;

public class LoginController {
	// 집가서 자고 싶다.
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "login";
	}
}
